import 'package:first_pro/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:first_pro/Settings.dart';

void main() {
  runApp(Project());
}

class Project extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final email1 = new TextEditingController();
    final password = new TextEditingController();
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/Light1.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  enableSuggestions: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      hintText: "E-mail id.", icon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                  /*onChanged: (value) {
                    email1 = value;
                  },*/
                  controller: email1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password", icon: Icon(Icons.lock)),
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  /*onChanged: (value) {
                    pass = value;
                  },*/
                  controller: password,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.blue),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  /*if (email1 == "d.krishnan@gmail.com" && pass == "dhruv123") {
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid password or email!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                  }*/
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                  child: Text(
                    "Not a member?Sign up",
                    style: TextStyle(color: Colors.cyan),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showP = false;
  final passC = new TextEditingController();
  final ctrl = new TextEditingController();
  final nameCtrl = new TextEditingController();
  final passConfirm = new TextEditingController();
  final collegeName = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Sign Up!"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  enableSuggestions: true,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      hintText: "Name", icon: Icon(Icons.person)),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  enableSuggestions: true,
                  controller: collegeName,
                  decoration: InputDecoration(
                      hintText: "College", icon: Icon(Icons.school)),
                  keyboardType: TextInputType.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  enableSuggestions: true,
                  controller: ctrl,
                  decoration: InputDecoration(
                      hintText: "E-mail id.", icon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 39, 0),
                child: TextField(
                  controller: passC,
                  decoration: InputDecoration(
                      hintText: "password",
                      hoverColor: Colors.lightBlue,
                      icon: Icon(Icons.security),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        color: this.showP ? Colors.blue : Colors.grey,
                        onPressed: () {
                          setState(() {
                            this.showP = !this.showP;
                          });
                        },
                      )),
                  obscureText: this.showP,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                child: TextField(
                  controller: passConfirm,
                  decoration: InputDecoration(
                      hintText: "Confirm password",
                      hoverColor: Colors.lightBlue,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        color: this.showP ? Colors.blue : Colors.grey,
                        onPressed: () {
                          setState(() {
                            this.showP = !this.showP;
                          });
                        },
                      )),
                  obscureText: this.showP,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              RaisedButton(
                  hoverColor: Colors.deepOrange,
                  textColor: Colors.lightBlue,
                  onPressed: () {
                    if (passConfirm.text == passC.text &&
                        ctrl.text.contains("@")) {
                      Fluttertoast.showToast(
                          msg: "Registered Successfully!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM);
                      setState(() {
                        Navigator.pop(context);
                      });
                    } else {
                      if (passConfirm.text != passC.text &&
                          !ctrl.text.contains("@")) {
                        Fluttertoast.showToast(
                            msg: "The passwords do not match. Invalid e-mail",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM);
                      } else if (!ctrl.text.contains("@")) {
                        Fluttertoast.showToast(
                            msg: "Invalid e-mail",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM);
                      } else {
                        Fluttertoast.showToast(
                            msg: "The passwords do not match!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM);
                      }
                    }
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.blue),
                  )),
              SizedBox(
                height: 10.0,
              ),
              /* Text(
                "$name",
                style: TextStyle(color: Colors.red),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
