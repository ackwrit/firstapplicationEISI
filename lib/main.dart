import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variables
  String mail = "";
  String password = "";
  String prenom ="";
  String nom = "";
  List<bool> selections = [true,false];

  @override
  Widget build(BuildContext context) {





    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Container(
          padding: const EdgeInsets.all(20),
          child: bodyPage(),
        )
        
      ),

    );



  }

  Widget bodyPage(){
    return  Column(
        children : [
          ToggleButtons(
              children: const  [
                 Text("Inscription"),
                Text("Connexion")
              ],
              isSelected: selections,
            selectedColor: Colors.red,

            borderRadius: BorderRadius.circular(10),
            disabledColor: Colors.white,
           
            onPressed: (int selected){
                setState(() {
                  selections[selected] = true;
                  if(selected == 0){
                    selections[1] = false;
                  }
                  else
                    {
                      selections[0] = false;
                    }
                });
            },
          ),
          const SizedBox(height : 40),

          //Prénom
          (selections[0])?TextField(
              decoration : InputDecoration(
                  hintText:"Entrer votre prénom",
                  border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(20)
                  )
              ),
              onChanged :(texte){
                setState((){
                  prenom = texte;
                });
              }
          ):Container(),

          const SizedBox(height : 40),


          // Nom

          (selections[0])?TextField(
              decoration : InputDecoration(
                  hintText:"Entrer votre nom",
                  border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(20)
                  )
              ),
              onChanged :(texte){
                setState((){
                  nom = texte;
                });
              }
          ):Container(),

          const SizedBox(height : 40),

          //Le mail
          TextField(
              decoration : InputDecoration(
                  hintText:"Entrer votre adresse mail",
                  border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(20)
                  )
              ),
              onChanged :(texte){
                setState((){
                  mail = texte;
                });
              }
          ),

          const SizedBox(height : 40),


          //Le mot de passe


          TextField(
              obscureText : true,
              decoration : InputDecoration(
                  hintText:"Entrer votre mot de passe",
                  border : OutlineInputBorder(
                      borderRadius : BorderRadius.circular(20)
                  )
              ),
              onChanged :(String texte){
                setState((){
                  password = texte;
                });
              }
          ),
          const SizedBox(height : 40),


          //Bouton cliqubale


          Row(
              mainAxisAlignment : MainAxisAlignment.center,
              children : [

                ElevatedButton(
                    onPressed:(){

                      Navigator.push(context,MaterialPageRoute(
                          builder : (context){
                            //return Dashboard(mail : mail,password : password);
                            return const Text("Validation");
                          }
                      ));
                    },
                    child : const Text("Validation")

                ),
                const SizedBox(width : 10),

                /*InkWell(
                    onTap :() {
                      print("J'ai appuyer");
                      Navigator.push(context,MaterialPageRoute(
                          builder :( context){
                            return SignIn();
                          }
                      ));
                    },
                    child: const Text("Inscription")

                ),*/


              ]

          ),




        ]

    );
  }

}
