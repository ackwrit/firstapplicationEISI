
import 'package:firstapplicationeisi/model/MyProfil.dart';
import 'package:firstapplicationeisi/modelView/ImageRond.dart';
import 'package:flutter/material.dart';
import 'package:firstapplicationeisi/library/lib.dart';


class MyUsers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyUsersState();
  }

}

class MyUsersState extends State<MyUsers>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: bodyPage(),
    );
      
  }


  Widget bodyPage(){
    return Column(
      children: [
        //Logo de moi
        ImageRond(image: Myprofil.image,size: 150,),


        //NOm et prénom
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: Myprofil.prenom,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onChanged: (newValue){
                  setState(() {
                    Myprofil.prenom = newValue;
                  });

                },
              ),
            ),

            IconButton(
                onPressed: (){

                },
                icon: const Icon(Icons.edit)
            ),
          ],
        ),
        const SizedBox(height: 10,),


        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(
                    hintText: Myprofil.nom,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onChanged: (newValue){
                  setState(() {
                    Myprofil.nom = newValue;
                  });

                },
              ),
            ),

            IconButton(
                onPressed: (){

                },
                icon: const Icon(Icons.edit)
            ),
          ],
        ),
        const SizedBox(height: 10,),


        Text(Myprofil.mail)

        // adresse mail
      ],
    );
  }

}