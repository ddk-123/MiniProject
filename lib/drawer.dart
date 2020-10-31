import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:first_pro/Settings.dart';
import 'package:first_pro/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xfff2f2f2),
        appBar: AppBar(
          backgroundColor: Color(0xff0C7EC55),
          title: Padding(
            padding: EdgeInsets.fromLTRB(50, 1, 1, 1),
            child: Text(
              'Digital Magazine',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
          ),

          //      style:TextStyle(
          //     fontFamily:'Pacifico',
          //     color: Colors.black,
          // ),
        ),

        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: const <Widget>[
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color(0xff0C7EC55),
        //         ),
        //         children:ListTile(
        //           leading: Icon(Icons.bookmark),
        //           title: Text('Bookmark'),
        //         ),
        //
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.bookmark),
        //         title: Text('Bookmark'),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.settings),
        //         title: Text('Settings'),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.account_circle),
        //         title: Text('Profile'),
        //       ),
        //
        //     ],
        //   ),
        // ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "abc xyz",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text(
                  "abcxyz@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0C7EC55),
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text(
                  'Bookmark',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPane()));
                },
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Logout',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Center(
              child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              SizedBox(
                height: 45.0,
              ),
              Container(
                //padding: EdgeInsets.only(left: 20, right:30),
                height: 200.0,
                width: 350.0,
                //color: Color(0xffFFE8D9),

                // child: Text(
                //   'Magazine',
                //     style: TextStyle(
                //       color: Colors.black,
                //     )
                // ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(120, 80, 20, 5),
                  child: Text(
                    'Magazine',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffFFE8D9),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                height: 200.0,
                width: 350.0,
                //color: Color(0xffC8CBF0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(120, 80, 20, 5),
                  child: Text(
                    'Newsletter',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffC8CBF0),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                height: 200.0,
                width: 350.0,
                //color: Color(0xffFFFCB7),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(95, 80, 20, 5),
                  child: Text(
                    'Upcoming Events',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffFFFCB7),
                  borderRadius: BorderRadius.circular(40),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
