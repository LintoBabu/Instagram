import 'package:flutter/material.dart';

class bubbles extends StatefulWidget {
  const bubbles({Key? key}) : super(key: key);

  @override
  State<bubbles> createState() => _bubblesState();
}

class _bubblesState extends State<bubbles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey),
          ),
          SizedBox(height: 5,),
          Text("user")
        ],
      ),

    );
  }
}
