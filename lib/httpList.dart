import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;

void main()
{
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Hello"),


      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: nandhini.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                    child: Card(
                      child: Text('${nandhini[index]["name"]}'),




                    )
                )
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          callApi();


        },
      ),
    );
  }

  @override
  Widget build1(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Center(

        child:ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),

      ),);
  }
  List<dynamic> nandhini=[];
  callApi()
  async{
    String url="gorest.co.in";

    var uri=Uri.https(url,"/public/v2/users");


    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(uri);

    print("RESPONSE : ${response.statusCode}");

    if(response.statusCode==200)
    {
      toast("Request Success");
      print("RESPONSE : ${response.body}");

      nandhini=json.decode(response.body);

      print("RESPONSE1 ${nandhini.length}");

      setState(() {

      });

    }
  }


  // array =[{name:akash,age:15}, {name:adam,age:12}]
  //
  // array[0]["age"];


  void toast(String msg)
  {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
