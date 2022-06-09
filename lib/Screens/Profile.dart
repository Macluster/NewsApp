// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageStateLess();
  }
}

class ProfilePageStateLess extends State<ProfilePage> {
  int flag = 0;
  int flag2 = 0;

  void setflag() {
    setState(() {
      if (flag == 0) {
        flag = 1;

        Timer(Duration(milliseconds: 500), () {
          setState(() {
            flag2 = 1;
          });
        });
      } else {
        flag = 0;
        flag2 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.orangeAccent[100],
          toolbarHeight: 30,
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 900,
                      child: Image.asset(
                        'assets/Images/bag2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 140),
                      alignment: Alignment.center,
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage( 'https://th.bing.com/th/id/OIP.FWxzSOOmpU9edoL8TGZlaQHaE8?pid=ImgDet&rs=1'),
                        radius: 60,
                      ),
                    ),
                  ],
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text(
                    "Hi I am Deepak Denny",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'CabinM'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text("following"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("100")
                        ],
                      ),
                      const SizedBox(width: 70),
                      Column(
                        children: const [
                          Text("followers"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("10K")
                        ],
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                    height: flag == 0 ? 300 : 500,
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                     
                      boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey)
                    ], color: Colors.white),
                    width: 330,
                    margin: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 50,
                        width: 300,
                        child: Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 50, left: 10),
                                  child: Image.asset(
                                    'assets/Images/mail.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 10),
                                    child: Text("Email")),
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 60),
                                    child: const SingleChildScrollView(scrollDirection: Axis.horizontal, child: Text("deepakjudejohn@gmail.com")))
                              ],
                            ),
                            const Divider(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 50, left: 10),
                                  child: Image.asset(
                                    'assets/Images/phone-call.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 10),
                                    child: const Text("Number")),
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 60),
                                    child: const Text("8281707449"))
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 50, left: 10),
                                  child: Image.asset(
                                    'assets/Images/github.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 10),
                                    child: const Text("GitHub")),
                                Container(
                                    width: 150,
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 60),
                                    child: const SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                            "https://github.com/Macluster")))
                              ],
                            ),
                            const Divider(),
                            if (flag2 == 1)
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 10),
                                    child: Image.asset(
                                      'assets/Images/linkedin.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 50, left: 5),
                                      child: const Text("LinkedIn")),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
                                      width: 150,
                                      margin: const EdgeInsets.only(
                                          top: 50, left: 60),
                                      child: const SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                              "https://www.linkedin.com/in/deepak-denny-57494218b/")),
                                    ),
                                  )
                                ],
                              ),
                            if (flag2 == 1) const Divider(),
                            if (flag2 == 1)
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 50, left: 10),
                                    child: Image.asset(
                                      'assets/Images/facebook.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 50, left: 5),
                                      child: const Text("FaceBook")),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 50, left: 60),
                                      child:const SingleChildScrollView(scrollDirection: Axis.horizontal, child: Text("https//Facebook.com")))
                                ],
                              ),
                            if (flag2 == 1) const Divider(),
                          ],
                        )))),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5),
                  ], color: Colors.orange[300]),
                  child: TextButton(
                    onPressed: () {
                      setflag();
                    },
                    child: const Text(
                      "More about me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
