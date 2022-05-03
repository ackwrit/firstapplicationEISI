import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {


  @override
  State<Dashboard> createState()=> DashboardState();

}

class DashboardState extends State<Dashboard>{
  int selected = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar : AppBar(title : const Text("Mon DashBoard")
        ),
        body : bodyPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (newValue){
          setState(() {
            selected = newValue;
            controller.jumpToPage(newValue);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: "Utilisateurs"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label : "Paramètres"
          )
        ],
      ),
    );
  }

  Widget bodyPage(){
    return PageView(
      onPageChanged: (value){
        setState(() {
          selected = value;
        });
      },
      children: [
        //Afficher tous les utilisateurs
        Text("Tous les utilisateurs"),

        //Créer une page de profil
        Text("mon Profil"),

      ],
      controller: controller,
    );


  }

}