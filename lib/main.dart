import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';
import 'registro.dart';
import 'home2.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'galvan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthOnePage(),
initialRoute: "/",
      routes: {
        '/login': (context) => LoginSevenPage(),
        '/registro': (context)=> SignupTwoPage(),

      },

    );
  }
}

class AuthOnePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[


            Expanded(
              child: Stack(
                children: <Widget>[

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(image: AssetImage("assets/img/b3.jpg"), fit: BoxFit.cover),
                    ),

                    foregroundDecoration: BoxDecoration(
                        color: Colors.green.withAlpha(70)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Spacer(flex: 1,),
                        Text("Galvan", style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 100.0,
                            color: Colors.white
                        ),),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            padding: const EdgeInsets.all(16.0),
                            color: Colors.white,
                            child: Text("Acceder", style: TextStyle(
                                color: Colors.green
                            ),),
                            onPressed: (){
                              Navigator.pushNamed(context, "/login");
                            },
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),),
            Expanded(child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text("Si no estas registrado "),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.green,
                      child: Text("Registrate", style: TextStyle(
                          color: Colors.white
                      ),),
                      onPressed: (){
                        Navigator.pushNamed(context, "/registro");
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(""),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.red,
                        icon: Icon(FontAwesomeIcons.google, color: Colors.white,),
                        label: Text("Google", style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                      ),
                      SizedBox(width: 10.0),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.indigo,
                        icon: Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                        label: Text("Facebook", style: TextStyle(color: Colors.white),),
                        onPressed: () {},

                      ),
                    ],
                  ),
                  Spacer(flex: 2,)
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}