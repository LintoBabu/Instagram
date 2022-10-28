import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Linto Babu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 210,),
              Icon(Icons.menu)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          height: 300,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration:
              BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Linto Babu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 210,),
            Icon(Icons.menu)
          ],
        ),SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          height: 300,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration:
              BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Linto Babu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 210,),
            Icon(Icons.menu)
          ],
        ),SizedBox(
          height: 10,
        ),

        Container(
          color: Colors.grey,
          height: 300,
        ),
      ],
    );
  }
}
