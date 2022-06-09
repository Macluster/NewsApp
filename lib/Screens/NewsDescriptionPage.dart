// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsModel.dart';

class NewsDescriptionPage extends StatelessWidget {
  NewsModel model;

  NewsDescriptionPage(this.model);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(foregroundColor: Colors.black,leading:const  Icon(Icons.arrow_back),backgroundColor: Colors.white,elevation: 0,),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                   Text(
                  model.title,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold),
                ),
               const  SizedBox(height: 30,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(model.image),
                ),
                const SizedBox(
                  height: 20,
                ),
             
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: const CircleAvatar(
                              radius: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("John Smith"),
                        ],
                      ),
                      Text(model.Date.split(' ')[0])
                    ],
                  ),
                ),
               const  SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    height: 400,
                    child: Text(model.desc,style: const  TextStyle(fontSize: 20),)),
                )
              ],
            ),
          )),
    );
  }
}
