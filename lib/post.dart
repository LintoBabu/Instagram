import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Model Class/model.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  late loginResponse objloginmodel;
  bool? status;
  String? message = "";
  Data? data;
  Profile? profile;
  String? username = "";
  String? image = "";
  String? email = "";
  String? username1= "";
  String? username2= "";
  String? username3= "";

  Future<loginResponse> gethomedata() async{
    loginResponse? objRespond;
    var respond = await http.get(Uri.parse("https://run.mocky.io/v3/85a68ebe-912f-4871-84d7-edfc054bd2a4"));
    if (respond.statusCode==200){
      var data = jsonDecode(respond.body);
      objRespond = loginResponse.fromJson(data);
    }
    return objRespond!;


  }

  homedata() async{
    objloginmodel = await gethomedata();
    setState(() {
      status = objloginmodel.status;
      message = objloginmodel.message;
      data = objloginmodel.data;
      profile = data!.profile;
      username = profile!.username;
      email = profile!.email;
      image = profile!.image;
      username1 = profile!.username1;
      username2 = profile!.username2;
      username3 = profile!.username3;
    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homedata();
  }
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
                username!,
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
              username1!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 140,),
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
              username3!,
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
