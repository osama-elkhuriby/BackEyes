import 'package:flutter/material.dart';

class LiveDatails extends StatefulWidget {
  const LiveDatails({super.key});

  @override
  State<LiveDatails> createState() => _LiveDatailsState();
}

class _LiveDatailsState extends State<LiveDatails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          cameraLiveItems(context),
          Card(
            elevation: 5,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30/11/2022',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('3 Events'),
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.list),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => liveDetails(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: 3),
        ]),
      ),
    );
  }

  Widget cameraLiveItems(BuildContext context) {
    return Stack(
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
            ]),
          ),
        ),
      ],
    );
  }
}

Widget liveDetails() {
  return Container(
    height: 100,
    color: Colors.grey.withOpacity(0.5),
    child: Row(children: [
      Text(
        '10:36:12 AM',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 15,
      ),
      Container(
        width: 2,
        height: 120,
        color: Colors.grey,
      ),
      SizedBox(
        width: 15,
      ),
      Text(
        'Human Detected',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 5,
      ),
      Icon(
        Icons.run_circle,
        color: Colors.green,
      ),
      SizedBox(
        width: 15,
      ),
      Image.network(
        'https://img.freepik.com/premium-vector/living-room-with-chair-sofa-window-bookshelf-flat-ozy-interior-cartoon-style_273525-112.jpg?w=1060',
        fit: BoxFit.fill,
        width: 120,
      ),
    ]),
  );
}
