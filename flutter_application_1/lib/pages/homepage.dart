// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dialogbox.dart';
import 'listtile.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}
final contrell=TextEditingController();
class item {
  bool value;
  String name;
  item(this.value, this.name);
}
bool value=true;
List <item> tasks=[];

class _homepageState extends State<homepage> {
  void ever(bool? p,int index){
    setState(() {
      tasks[index].value= !tasks[index].value ;
    });
  }
  void newtask(){
    setState(() {
      tasks.add(item(false , contrell.text ));
    }
    );
    Navigator.of(context).pop();
    contrell.clear();
  }
  void createtask(){
    showDialog(context: context, builder:(context) {
      return dialogbox(mycon: contrell,
      oncancel:() => Navigator.of(context).pop(),
      onsave: () {
        newtask();
      },);
    }, );
  }
  void del(int index){
    setState(() {
      tasks.remove(tasks[index]);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.lightBlue ,
      appBar: AppBar(
        title: Center(
          child: Text("TO DO",
          style: TextStyle(
           color:  Colors.black,
          ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return listtile(
            name: tasks[index].name,
             onchanged:(p) => ever(p, index),
              value: tasks[index].value,
              deletetask: (p0) {
                del(index);
              },
              );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,
        color: Colors.black,),
        onPressed:createtask,
        ),
    );
  }
}