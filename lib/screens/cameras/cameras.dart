import 'package:flutter/material.dart';

import 'cameras_live.dart';

class Cameras extends StatefulWidget {
  const Cameras({Key? key}) : super(key: key);

  @override
  State<Cameras> createState() => _CamerasState();
}

class _CamerasState extends State<Cameras> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/vo.png',
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    'Cameras',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                height: height * 0.7,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: height * 0.01,
                  ),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => cameraPlace(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cameraPlace() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CamerasLive(),
            ));
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
                'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060'),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Text(
              'Living Room',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
