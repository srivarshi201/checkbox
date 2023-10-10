import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCheck(),
    );
  }
}
class MyCheck extends StatefulWidget {
  const MyCheck({super.key});

  @override
  State<MyCheck> createState() => _MyCheckState();
}

class _MyCheckState extends State<MyCheck> {
  bool? _ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 20,),
          CheckboxMenuButton(value: _ischecked,
              onChanged: (val){
            setState(() {
              _ischecked=val;
            });
              },
              child: Text("Save the Credentials"),
            trailingIcon: Icon(Icons.save),
          ),
          ElevatedButton(onPressed: (){
            if(_ischecked==true) {
              print("verified");
            }
            else {
              print("unverified");
            }
            }, child:Text("check"))
        ],
      ),3
    );
  }
}

