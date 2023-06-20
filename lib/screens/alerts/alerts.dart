import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: const [
                Text(
                  'Alert',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.circleQuestion,
                  size: 15,
                )
              ],
            ),
          ),
          Container(
            height: 60,
            color: Color(0xff00101D),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Text(
                        'All Devices',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/vo.png',
                        color: Colors.white,
                        scale: 1.5,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'All Activity',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/vo.png',
                        color: Colors.white,
                        scale: 1.5,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'jul 15',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/vo.png',
                        color: Colors.white,
                        scale: 1.5,
                      )
                    ],
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: [
                Image.network(
                  'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060',
                  height: 80,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Living Room',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          '12:20 pm',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Human Detected',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.run_circle,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: [
                Image.network(
                  'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060',
                  height: 80,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Living Room',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          '12:20 pm',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Human Detected',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.run_circle,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              children: [
                Image.network(
                  'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060',
                  height: 80,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Living Room',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          '12:20 pm',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Human Detected',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.run_circle,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
