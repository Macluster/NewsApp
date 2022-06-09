import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newsapp/Coponents/Custome_AppBar.dart';
import 'package:newsapp/Coponents/news_Card.dart';
import 'package:newsapp/Screens/NewsDescriptionPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Models/NewsModel.dart';
import 'package:newsapp/api/Response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List<NewsModel> news = [];
   List<NewsModel> TechNewsList = [];
   List<NewsModel> MediaNewsList = [];
   List<NewsModel> SportsNewsList = [];
   List<NewsModel> BussinessNewsList = [];

   int TypeFlag=0;

  @override
  void initState() {
    super.initState();

    GetData();
  }

  String Newsfield = "all";


  int limitNewsflag = 0;

 String getDate()
 {
       String date=DateTime.now().toString().split(' ')[0];
       return date;
 }

  Future<List<NewsModel>> getTechNews() async {
    List<NewsModel> tempnews = [];
    int n = 0;
    String apikey = "7596d4604c7741ab932e0c86323beacf";
    String url =
        "https://newsapi.org/v2/everything?q=Information&from="+getDate()+"&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      print("hhhhhhhhhhhhhhsf");

      jsonData["articles"].forEach((element) {
        if (n > 7) {
          return;
        }

        print(element['title']);
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          setState(() {
            tempnews.add(article);
          });
          n++;
          print(element['title']);
        }
      });
    }

    return tempnews;
  }

  Future<List<NewsModel>> getAllNews() async {
    List<NewsModel> tempnews = [];
    int n = 0;
    String apikey = "7596d4604c7741ab932e0c86323beacf";
    String url =
        "https://newsapi.org/v2/everything?q=All&from="+getDate()+"&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      print("hhhhhhhhhhhhhhsf");

      jsonData["articles"].forEach((element) {
        if (n > 7) {
          return;
        }

        print(element['title']);
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          setState(() {
            tempnews.add(article);
          });
          n++;
          print(element['title']);
        }
      });
    }

    return tempnews;
  }

Future<List<NewsModel>> getMediaNews() async {
    List<NewsModel> tempnews = [];
    int n = 0;
    String apikey = "7596d4604c7741ab932e0c86323beacf";
    String url =
        "https://newsapi.org/v2/everything?q=Media&from="+getDate()+"&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      print("hhhhhhhhhhhhhhsf");

      jsonData["articles"].forEach((element) {
        if (n > 7) {
          return;
        }

        print(element['title']);
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          setState(() {
            tempnews.add(article);
          });
          n++;
          print(element['title']);
        }
      });
    }

    return tempnews;
  }
Future<List<NewsModel>> getSportsNews() async {
    List<NewsModel> tempnews = [];
    int n = 0;
    String apikey = "7596d4604c7741ab932e0c86323beacf";
    String url =
        "https://newsapi.org/v2/everything?q=sports&from="+getDate()+"&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      print("hhhhhhhhhhhhhhsf");

      jsonData["articles"].forEach((element) {
        if (n > 7) {
          return;
        }

        print(element['title']);
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          setState(() {
            tempnews.add(article);
          });
          n++;
          print(element['title']);
        }
      });
    }

    return tempnews;
  }
Future<List<NewsModel>> getBussinessNews() async {
    List<NewsModel> tempnews = [];
    int n = 0;
    String apikey = "7596d4604c7741ab932e0c86323beacf";
    String url =
        "https://newsapi.org/v2/everything?q=Bussiness&from="+getDate()+"&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      print("hhhhhhhhhhhhhhsf");

      jsonData["articles"].forEach((element) {
        if (n > 7) {
          return;
        }

        print(element['title']);
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          setState(() {
            tempnews.add(article);
          });
          n++;
          print(element['title']);
        }
      });
    }

    return tempnews;
  }

 Future<List<NewsModel>> GetNews ()async{

   print("Hello");
    if(TypeFlag==0)
    {
      print("TypeFlag=0");
      return news;
      
    }
    else if(TypeFlag==1)
    {
      print("TypeFlag=1");
       return TechNewsList;
    }
    else if(TypeFlag==2)
    {
      print("TypeFlag=1");
       return MediaNewsList;
    }
    else if(TypeFlag==3)
    {
      print("TypeFlag=1");
       return SportsNewsList;
    }
    else
    {
      print("TypeFlag=1");
       return BussinessNewsList;
    }


  }

  
   
  
  
  List<NewsModel> list = [
    NewsModel(
      "",
      "author",
      "",
      "",
      "",
      "",
    )
  ];

  void GetData() async {
    news = await getAllNews();
   TechNewsList = await getTechNews();
   MediaNewsList=await getMediaNews();
  SportsNewsList=await getSportsNews();
   BussinessNewsList=await getBussinessNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomeAppBar(),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Breaking News",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                GestureDetector(
                  onTap: ()async {
                    var templist=await GetNews();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NewsDescriptionPage(templist[0] )));
                  },
                  child: Container(
                    height: 360,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 200,
                                child: FutureBuilder<List<NewsModel>>(
                                    future: GetNews(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData&&news.isNotEmpty&&snapshot.data!.length>0) {
                                        return Image.network(
                                          snapshot.data![0].image,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        );
                                      } else {
                                        return const Text("Loading");
                                      }
                                    }),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height:80,
                            child: FutureBuilder<List<NewsModel>>(
                              future: GetNews() ,
                              builder: (context,snapshot) {

                                if(snapshot.hasData&&news.length>0&&snapshot.data!.length>0)
                                {
                                 
                                  return Text( snapshot.data![0].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                     );
                                }
                                else
                                {
                                  return const Text("  ");
                                }
                                
                              }
                            ),
                          ),
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
                                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.FWxzSOOmpU9edoL8TGZlaQHaE8?pid=ImgDet&rs=1'),
                                      radius: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("John Smith"),
                                ],
                              ),
                              Text(getDate())
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                         

                       TypeFlag=0;
                          setState(() {});
                        },
                        child: Container(
                         
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("All"))),
                    GestureDetector(
                        onTap: () {
                        
                          TypeFlag=1;
                          

                         
                          setState(() {});
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Information"))),
                    GestureDetector(
                        onTap: () async {
                            TypeFlag=2;
                          setState(() {});
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Media"))),
                    GestureDetector(
                        onTap: () {
                           TypeFlag=3;
                          setState(() {});
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Sports"))),
                    GestureDetector(
                        onTap: () {
                            TypeFlag=4;
                          setState(() {});
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Bussiness")))
                  ],
                ),
                const SizedBox(height: 10,),
               
                Container(
                  height: 200,
                  child: FutureBuilder<List<NewsModel>>(
                      future:GetNews(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData && news.length > 0) {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var data = snapshot.data![index];
                                return NewsCard(data);
                              });
                        } else {
                          return const Text("Loading");
                        }
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
