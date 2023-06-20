import 'package:flutter/material.dart';

import '../qr_code/barcode.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TextEditingController?controller;

  @override
  void initState() {
    // controller=TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  // var FormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff8fcfd),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    'assets/v.png',
                    fit: BoxFit.cover,
                    width: 428,
                    height: 360,
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/vo.png',
                        width: 18,
                        height: 9,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "cameras",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 10,
                    right: 100,
                  ),
                  child: TextFormField(
                      textAlign: TextAlign.center,
                      // controller:controller ,
                      onFieldSubmitted: (data) {},
                      validator: (value) =>
                          value!.isEmpty ? "This field is reuired" : null,
                      decoration: InputDecoration(
                          hintText: "Enter Place",
                          hintStyle: TextStyle(
                            fontSize: 21,
                            color: Color(0xff00101D),
                          ),
                          fillColor: Colors.white,
                          focusColor: Colors.white54,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(),
                          enabled: true,
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff00101D)),
                              borderRadius: BorderRadius.circular(12)))),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 55),
                  child: Container(
                    width: 366,
                    height: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black, style: BorderStyle.solid)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Tap here to add your camera',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: Color(0xff00101D)),
                            )),
                        FloatingActionButton(
                          hoverColor: Color(0xffff8fcfd),
                          splashColor: Color(0xffff8fcfd),
                          highlightElevation: 0,
                          focusElevation: 0,
                          hoverElevation: 0,
                          disabledElevation: 0,
                          focusColor: Color(0xffff8fcfd),
                          elevation: 0,
                          backgroundColor: Color(0xfff8fcfd),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QrCodeScreen()));
                            });
                          },
                          child: Image.asset(
                            "assets/plus.png",
                            width: 18,
                            height: 18,
                          ),
                          mini: true,
                        ),
                      ],
                    ),
                  ),
                )
                // ),
              ]),
        ));
  }
      // fontWeight: FontWeight.w500,fontFamily: "Poppins"),),enabled: true,);
}
