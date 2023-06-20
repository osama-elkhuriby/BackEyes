import 'package:flutter/material.dart';

import 'liveDetails.dart';

class CamerasLive extends StatefulWidget {
  const CamerasLive({super.key});

  @override
  State<CamerasLive> createState() => _CamerasLiveState();
}

class _CamerasLiveState extends State<CamerasLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => cameraLiveItems(context),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 2),
        ]),
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
            ));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060',
              height: 300,
              fit: BoxFit.fill,
            ),
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
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Live',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Garden(back door)',
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
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
