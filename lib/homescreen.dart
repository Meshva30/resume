import 'package:flutter/material.dart';
import 'package:resume/utils/page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF4E869),
      appBar: AppBar(
        backgroundColor: Color(0xffF4E869),
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.black),
        title: Text('Detail screen',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),
      ),
          body: ListView.builder(
            itemCount: nameList.length,
            itemBuilder: (context, index) => InkWell(onTap: (){
            pageIndex = index;
            Navigator.of(context).pushNamed('info');
    },
    child: ListTile(
              leading: iconList[index],
            title: Text("${nameList[index]}"),
          ),
    ),
    ),

    ));
  }
}
List iconList =[
  Icon(Icons.person),
  Icon(Icons.cast_for_education),
  Icon(Icons.person_2),
  Icon(Icons.safety_check_outlined),
  Icon(Icons.emoji_objects_rounded),
  Icon(Icons.remember_me),


];
List nameList =[
  "personal Details",
  "Eduaction",
  "Experience",
  "Skills",
  "Objective",
  "Reference",

];