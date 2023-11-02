import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  
  final String breakfast;
  final String lunch;
  final String dinner;

  const Menu({
      super.key,
      required this.breakfast, 
      required this.lunch, 
      required this.dinner, 
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Café:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0XFF355211),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0XFFC7E5A1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                breakfast,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),  
              ),
            ),
            SizedBox(height: 12,),
            Text(
              "Almoço:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0XFF355211),
              ),  
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0XFFC7E5A1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                lunch,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),  
              ),
            ),
            SizedBox(height: 12,),
            Text(
              "Jantar:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0XFF355211),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0XFFC7E5A1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                dinner,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),  
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Row(
                    children: [
                      Text(
                        "Editar",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold 
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.create,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Row(
                    children: [
                      Text(
                        "Deletar",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold 
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}