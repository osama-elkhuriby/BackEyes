import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prop/screens/members/cubit/cubit.dart';
import 'package:prop/screens/members/cubit/states.dart';
import 'package:prop/services/member_model.dart';

import 'addmember.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Members',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Image.asset(
                  'assets/member.png',
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            BlocConsumer<MembersCubit, MembersStates>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is MembersSuccessState) {
                    return Expanded(
                      child: Column(
                        children: [
                          GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: Column(
                                  children: <Widget>[
                                    Image.network(state.memberList.memberImage!),
                                    Text(state.memberList.memberName!),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: width * 0.85,
                            child: Card(
                              shape: const StadiumBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddMembersPage()));
                                      },
                                      child: const Text(
                                        'Tap here to add member',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Color(0xff00101D)),
                                      )),
                                  const Icon(Icons.add)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }
                  return Column(
                    children: [
                      const Text(
                        'No Member add yet',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      SizedBox(
                        width: width * 0.85,
                        child: Card(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddMembersPage()));
                                  },
                                  child: const Text(
                                    'Tap here to add new member',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                        color: Color(0xff00101D)),
                                  )),
                              const Icon(Icons.add)
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }

  Column memberInfo(double height) {
    return Column(
      children: [
        Image(image: NetworkImage('')),
        SizedBox(
          height: height * 0.02,
        ),
        Text('Moahemd'),
      ],
    );
  }
}
