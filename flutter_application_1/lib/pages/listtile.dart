// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class listtile extends StatelessWidget {
   final String name;
  final bool value;
  Function(bool?)? onchanged;
  Function(BuildContext)? deletetask;
  
  listtile({super.key, required this.name, required this.onchanged , required this.value ,required this.deletetask});
 
  @override
  
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left:20,right: 20,top: 20),
          child: Slidable(
            endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(onPressed: deletetask,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                )
              ],
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: value? Color.fromRGBO(2, 75, 109, 1):Color.fromARGB(255, 40, 186, 186),
                borderRadius:BorderRadius.circular(15),
              ),
              
              child:Row(
                children: [
                  Checkbox(value: value,
                   onChanged: onchanged,
                   activeColor: Colors.black,),
            
                  Text(name,
                  style: TextStyle(decoration: value? TextDecoration.lineThrough:TextDecoration.none,
                  fontSize: 20,
                  ),),
                  
                ],
              ),//text feild
            ),
          ),
          );
  }
}