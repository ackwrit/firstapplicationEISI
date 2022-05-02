
import 'package:cloud_firestore/cloud_firestore.dart';

class MyProfil{

  late String _uid;
  late String nom;
  late String prenom;
  String? image;
  DateTime? dateNaissance;
  late String mail;

  String get uid {
    return _uid;
  }




  //Constructeur

  MyProfil(DocumentSnapshot snapshot){
    _uid = snapshot.id;
    Map <String,dynamic> map = snapshot.data() as Map<String,dynamic>;
    nom = map["NOM"];
    prenom = map["PRENOM"];
    image = map["IMAGE"];
    mail = map["MAIL"];
    Timestamp timpestamp = map["NAISSANCE"];
    dateNaissance = timpestamp.toDate();

  }



//Méthodes


}