import 'package:flutter/material.dart';

class Indication extends StatelessWidget {
  
  final String tittle;
  final String content;

  const Indication({
      super.key,
      required this.tittle, 
      required this.content, 
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8,),
        Text(
          tittle,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0XFF355211),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0XFFC7E5A1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              content,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),  
            ),
          ),
        ),
      ],
    );
  }
}