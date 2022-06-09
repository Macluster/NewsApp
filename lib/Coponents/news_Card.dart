// ignore_for_file: file_names

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsModel.dart';
import 'package:newsapp/Screens/NewsDescriptionPage.dart';

class NewsCard extends StatelessWidget {
NewsModel model;

  NewsCard(this.model);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>NewsDescriptionPage(model)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
         
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Container( height: 50, width: 100, child: Image.network(model.image)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                     
                        width: 200 ,
                        child: Text(
                         model.title,
                          textAlign: TextAlign.start,style:const TextStyle(fontSize: 11),
                        )),
                  
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
