import 'package:flutter/material.dart';

class button extends StatefulWidget {
   String title;
   String turn;
   button({super.key, required this.title , required this.turn });

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  void settitle(String turn){
    widget.title="x";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       settitle(widget.turn);
      },
      child: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(widget.turn , style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
    );
  }
}