import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Food"),
      ),
      body: ListView(
        children: [
          Text("เนื้อสัตว์"),
          // StreamBuilder(
          //   stream: FirebaseFirestore.instance.collection("Foods").snapshots(),
         
          //    builder:(context, snapshot) {
          //     Switch(snapshot.){

          //     }
               
          //    },
          //    )
  
        ],
      ),
    );
   
  }
}