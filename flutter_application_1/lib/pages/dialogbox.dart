// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:flutter/material.dart';
class dialogbox extends StatelessWidget {
  final mycon;
  VoidCallback onsave;
  VoidCallback oncancel;
   dialogbox({super.key, required this.mycon,required this.oncancel,required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 110,
        width: 130,
        child: Column(
          children: [
             TextField(
              controller: mycon,
              
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10,top: 2,bottom: 2),
                hintText: "add new task",
                icon: Icon(Icons.task),
                border: OutlineInputBorder(),
                
              ),          
             ),
             SizedBox(height: 7,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:onsave,
                child:Container(
                  width:50,
                  height:30,
                  child: Center(child: Text("save")),
                )
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed:oncancel,
                child:Container(
                  width:50,
                  height:30,
                  child: Center(child: Text("cancel")),
                )
                )
              ],
             )
          ],
        ),
        
      ),
      
    );
  }
}