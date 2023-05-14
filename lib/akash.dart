import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(AkashApp());
}

class AkashApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akash',
      home: AkashState(),

      debugShowCheckedModeBanner: false,
    );
  }
}
class AkashState extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Title")
      ),

      body: Center(
        child: ElevatedButton(

          child: Text("Click Me!"),
          onPressed: () {
            print("The button was clicked!");
          },

        ),

      ),
    );
  }

}