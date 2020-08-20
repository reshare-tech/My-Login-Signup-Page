import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "MyHome",
        routes: <String, WidgetBuilder>{
          "MyHome": (context) => HomePage(),
          "MyPage" : (context) => MyPage(),
          "MySignUpPage": (context) => SignUpPage(),
          "MyLogInPage": (context) => LogInPage(),
         }
     );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("HOME"), centerTitle: true,),
        body:  Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("LogIn "),
                color: Colors.lightBlueAccent,
                onPressed: () { Navigator.pushNamed(context, "MyLogInPage"); },
              ),
              FlatButton(
                  child: Text("SignUp"),
                  color: Colors.greenAccent,
                  onPressed: () { Navigator.pushNamed(context, "MySignUpPage"); }
              ),
            ],
          ) ,
        )
      );
     }
    }

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("SignUpPage"),
            centerTitle: true
        ),
        body: Form(
            key: _formKey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center ,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 25),
                  RaisedButton(
                    child: Text("SignUp"),
                    color: Colors.lightBlueAccent,
                    onPressed:() {
                        Navigator.pushNamed(context, 'MyPage');
                        },
                       )
                      ]
                     )
                    )
                   );
                  }
                 }


class LogInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("LOGIN"),
            centerTitle: true),
        body: Form(
          key: _formKey,
          child: Column( mainAxisAlignment: MainAxisAlignment.center ,
            children:<Widget> [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 25),
              TextFormField( obscureText: true,
                decoration: InputDecoration(
                    labelText: "Enter Password",
                    border: OutlineInputBorder()
                ),
              ),
              RaisedButton(child: Text("LogIn"),
                  color: Colors.lightBlueAccent,
                  onPressed: () { Navigator.pushNamed(context, "MyPage");}

              )
             ],
            ),
           )
          );
         }
        }


class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("MyPage"),
            centerTitle: true
        ),
        body: Center(

           child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Image(image: AssetImage('assert/100_5509.JPG'), width: 400,height: 400,)  ,
              RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "MyHome");
                  },
                  child: Text("Logout"),
                  color: Colors.lightBlueAccent
              ),
             ]
            ),
           )
          );
         }



}
