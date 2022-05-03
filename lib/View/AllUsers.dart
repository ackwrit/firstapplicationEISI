import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapplicationeisi/Fonctions/FirestoreHelper.dart';
import 'package:firstapplicationeisi/library/constant.dart';
import 'package:firstapplicationeisi/model/MyProfil.dart';
import 'package:firstapplicationeisi/modelView/ImageRond.dart';
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
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreHelper().fireUser.snapshots(),
        builder: (context, snapshot){
        // Pas d'information dans la collection Users
          if(!snapshot.hasData){
              return const CircularProgressIndicator();
          }
          // Information dans la collection Users
          else
            {
              List documents = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context,index){
                    MyProfil users = MyProfil(documents[index]);
                    if(users.uid == Myprofil.uid){
                      return Container();
                    }
                    else{
                      return Card(
                        elevation: 5.0,
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          //Image
                          leading: ImageRond(image: users.image,size:60),

                          title: Text("${users.prenom} ${users.nom}"),
                          subtitle: Text("${users.mail}"),
                        ),
                      );
                        
                        
                     
                    }



                  }
              );
            }
        }
    );
  }

}