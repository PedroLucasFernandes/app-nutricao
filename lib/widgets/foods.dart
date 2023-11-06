import 'package:flutter/material.dart';

class Foods extends StatelessWidget {

  final String name;
  final Image? image;
  final String type;
  final String meal;
  final bool isMy;
  const Foods({
      super.key,
      this.image, 
      required this.name, 
      required this.type, 
      required this.meal,
      required this.isMy, 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0XFF355211),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 124,
              height: 125,
            ),
          ),
          Container(
            height: 151,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                "Nome: $name",
                ),
                Text(
                  "Categoria: $type",
                ),
                Text(
                  "Refeição: $meal",
                ),
                isMy ? Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.create,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      onPressed: () {
      
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      onPressed: () {
                        
                      },
                    ),
                  ],
                )
                : SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}