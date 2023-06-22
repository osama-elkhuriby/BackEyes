import 'package:flutter/material.dart';
import 'package:prop/screens/cameras/cameras.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;

import 'liveDetails.dart';

class CamerasLive extends StatefulWidget {
  const CamerasLive({Key? key}) : super(key: key);

  @override
  State<CamerasLive> createState() => _CamerasLiveState();
}

int index = 0;
String loc_name = cameraLocations[index] ;

class _CamerasLiveState extends State<CamerasLive> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => cameraLiveItems(context),
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
              itemCount: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget cameraLiveItems(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LiveDatails(),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          Positioned(
            top: 30,
            left: 15,
            child: Container(
              width: 100,
              color: Colors.black38,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Live',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            color: Colors.white24,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loc_name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '1st camera',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.zoom_out_map,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
