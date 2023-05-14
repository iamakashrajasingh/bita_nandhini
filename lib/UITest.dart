import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(UIApp());
}

class UIApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Hello App',
      home: UiSection(),

    );
  }
}

class UiSection extends StatelessWidget {
  const UiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Btn 1")),
          ElevatedButton(onPressed: (){}, child: Text("Btn 2")),
          ElevatedButton(onPressed: (){}, child: Text("Btn 3")),
          ElevatedButton(onPressed: (){}, child: Text("Btn 4")),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Btn 1")),
              ElevatedButton(onPressed: (){}, child: Text("Btn 2")),
              ElevatedButton(onPressed: (){}, child: Text("Btn 3")),
              ElevatedButton(onPressed: (){}, child: Text("Btn 4")),
            ],
          ),
          Icon(Icons.call),
          Image(
            // image: AssetImage('image1.png'),
            image: NetworkImage('https://picsum.photos/536/354'),
          ),
          Text("Hello Akash!")
        ],
        
      ),
    );
  }
}

