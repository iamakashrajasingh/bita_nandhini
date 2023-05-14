import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_text_box/flutter_text_box.dart';

void main()
{
  runApp(IPTest());
}

class IPTest extends StatefulWidget {


  @override
  State<IPTest> createState() => _IPTestState();
}

class _IPTestState extends State<IPTest> {
  TextEditingController textEditingController=TextEditingController();
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
        title: Text("Hello"),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
              ),
              ElevatedButton(onPressed: (){
                print("Text Entered:  ${textEditingController.text}");
              }, child: Text("Click")),
              ElevatedButton(onPressed: (){
                textEditingController.text="Apple";
              }, child: Text("Set Text")),



              Form(
                key:key,
                child: Column(
                  children: [
                    TextBoxLabel(
                      label: 'Fullname',
                      hint: 'Please enter your fullname here',
                      errorText: 'This field is requiered !',
                      onSaved: (String value) { },
                    ),
                    TextBoxIcon(
                    icon: Icons.phone,
                    inputType: TextInputType.emailAddress,
                    label: 'Email',
                    hint: 'Please enter your email address here',
                    errorText: 'This field is requiered !',
                    onSaved: (String value) { },
                  ),]
                ),
              ),

              ElevatedButton(onPressed: (){submitForm();}, child: Text("Submit"))

            ],
          ),
        ),
      ),
    );
  }

  submitForm(){
    final state = key.currentState;
    if (state!.validate()) {
      state.save();

      //!DO SOME THIS HERE...
    }
  }
}
