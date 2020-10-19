import 'dart:async';
import 'dart:io';

import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class player extends StatefulWidget {
  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
  BetterPlayerController _betterPlayerController;
  StreamController<bool> _fileVideoStreamController =
  StreamController.broadcast();
  bool _fileVideoShown = false;

  Future<BetterPlayerController> _setupDefaultVideoData() async {
    var dataSource = BetterPlayerDataSource(BetterPlayerDataSourceType.NETWORK,
        "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
        resolutions: {
          "LOW":
          "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
          "MEDIUM":
          "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4",
          "LARGE":
          "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1280_10MG.mp4",
          "EXTRA_LARGE":
          "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1920_18MG.mp4"
        });
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          controlsConfiguration: BetterPlayerControlsConfiguration(
            enableProgressText: true,
            enablePlaybackSpeed: true,
            enableSubtitles: true,
          ),
        ),
        betterPlayerDataSource: dataSource);
    _betterPlayerController.addEventsListener((event) {
      print("Better player event: ${event.betterPlayerEventType}");
    });
    return _betterPlayerController;
  }

  Future<BetterPlayerController> _setupFileVideoData() async {
    await _saveAssetVideoToFile();
    await _saveAssetSubtitleToFile();
    final directory = await getApplicationDocumentsDirectory();

    var dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.FILE,
      "${directory.path}/testvideo.mp4",
      subtitles: BetterPlayerSubtitlesSource.single(
        type: BetterPlayerSubtitlesSourceType.FILE,
        url: "${directory.path}/example_subtitles.srt",
      ),
    );
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(),
      betterPlayerDataSource: dataSource,
    );

    return _betterPlayerController;
  }

  Future _saveAssetSubtitleToFile() async {
    String content =
    await rootBundle.loadString("assets/example_subtitles.srt");
    final directory = await getApplicationDocumentsDirectory();
    var file = File("${directory.path}/example_subtitles.srt");
    file.writeAsString(content);
  }

  Future _saveAssetVideoToFile() async {
    var content = await rootBundle.load("assets/testvideo.mp4");
    final directory = await getApplicationDocumentsDirectory();
    var file = File("${directory.path}/testvideo.mp4");
    file.writeAsBytesSync(content.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,appBar: AppBar(
      backgroundColor: Colors.black,
    ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          _buildDefaultVideo(),
          // _buildShowFileVideoButton(),
        ]),
      ),
    );
  }

  Widget _buildDefaultVideo() {
    return FutureBuilder<BetterPlayerController>(
      future: _setupDefaultVideoData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: snapshot.data,
            ),
          );
        }
      },
    );
  }

  Widget _buildShowFileVideoButton() {
    return Column(children: [
      RaisedButton(
        child: Text("Show video from file"),
        onPressed: () {
          _fileVideoShown = !_fileVideoShown;
          _fileVideoStreamController.add(_fileVideoShown);
        },
      ),
      _buildFileVideo()
    ]);
  }


  Widget _buildFileVideo() {
    return StreamBuilder<bool>(
      stream: _fileVideoStreamController.stream,
      builder: (context, snapshot) {
        if (snapshot?.data == true) {
          return FutureBuilder<BetterPlayerController>(
            future: _setupFileVideoData(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return AspectRatio(
                  aspectRatio: 16 / 9,
                  child: BetterPlayer(
                    controller: snapshot.data,
                  ),
                );
              }
            },
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  @override
  void dispose() {
    _fileVideoStreamController.close();
    super.dispose();
  }
}
