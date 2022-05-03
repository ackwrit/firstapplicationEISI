import 'package:flutter/material.dart';

class AllUsers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return AllUsersState();
  }

}

class AllUsersState extends State<AllUsers>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return bodyPage();
  }


  Widget bodyPage(){
    return const Text("Je suis dans la page allUsers");
  }

}