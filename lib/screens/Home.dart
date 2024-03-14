import 'package:flutter/material.dart';
import 'package:tiktactao/Components/button.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int x = 1;
  int o = 0;
  String turn = "X";

  void passTurn() {
    setState(() {
      if (x == 1) {
        x = 0;
        o = 1;
        turn = "O";
      } else {
        x = 1;
        o = 0;
        turn = "X";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("X AND O "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(child: button(title: "",turn: turn, ) , onTap: (){
                passTurn();
              },),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(title: "",turn: turn, ),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(title: "",turn: turn, ),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
              SizedBox(width: 10,),
              button(title: "",turn: turn, ),
            ],
          ),
          
        ],
      ),
    );
  }
}