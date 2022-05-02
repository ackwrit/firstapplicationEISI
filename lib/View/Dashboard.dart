import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {


  @override
  State<Dashboard> createState()=> DashboardState();

}

class DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar : AppBar(title : const Text("Mon DashBoard")
        ),
        body : Text("J'ai comme adresse ")
    );
  }

}