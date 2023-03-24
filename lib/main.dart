import 'package:portal_unsrat_clone/db/user.dart';
import 'package:portal_unsrat_clone/db/database_helper.dart';

import './home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Login(),
      '/home': (context) => const Home(),
    },
  ));
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const drawerHeader = DrawerHeader(
        padding: EdgeInsets.only(bottom: 10, left: 25),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "PORTAL INSPIRE",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          leading: TextButton(
              onPressed: () {},
              child: const Text(
                "WWW.UNSRAT.AC.ID",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    decoration: TextDecoration.underline),
              )),
        ),
        ListTile(
          leading: IconButton(
            icon: const Icon(Icons.book_outlined,
                color: Color.fromRGBO(255, 255, 255, 0.8)),
            onPressed: () {},
          ),
          title: const Text(
            "BACA PERATURAN AKADEMIK",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: const Icon(
              Icons.facebook_outlined,
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
            onPressed: () {},
          ),
          title: const Text(
            "FACEBOOK",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage('assets/images/twitter.png'),
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
            onPressed: () {},
          ),
          title: const Text(
            "TWITTER",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage('assets/images/instagram.png'),
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
            onPressed: () {},
          ),
          title: const Text(
            "INSTAGRAM",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage("assets/images/youtube.png"),
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
            onPressed: () {},
          ),
          title: const Text(
            "YOUTUBE",
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        //title: const Text("appbar"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: Drawer(
        //backgroundColor: Color.fromARGB(255, 249, 99, 50),
        surfaceTintColor: Colors.amber,
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.mirror,
                    colors: [
                  Color.fromARGB(255, 249, 99, 50),
                  //Color.fromARGB(188, 249, 100, 50),
                  //Color.fromARGB(99, 249, 100, 50),
                  //Color.fromARGB(54, 249, 100, 50),
                  Colors.black
                ])),
            child: drawerItems),
      ),
      backgroundColor: const Color.fromARGB(150, 255, 24, 3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 30),
                child: Image.asset(
                  'assets/images/logo_hd.png',
                )),
            Padding(
                //formUserName
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(129, 255, 255, 255),
                      backgroundBlendMode: BlendMode.overlay),
                  //height: 40,
                  //width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8)),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        )),
                  ),
                )),
            Padding(
                //formPassword
                padding: const EdgeInsets.only(right: 40, left: 40, top: 10),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(129, 255, 255, 255),
                      backgroundBlendMode: BlendMode.overlay),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8)),
                        icon: Icon(
                          Icons.key,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        )),
                  ),
                )),
            Padding(
              //ButtonLogin
              padding: const EdgeInsets.only(
                  right: 40, top: 20, left: 40, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.white,
                    color: const Color.fromARGB(255, 255, 54, 54),
                    borderRadius: BorderRadius.circular(40)),
                height: 45,
                width: 330,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Home()));
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              //LupaPassword
              padding: const EdgeInsets.only(bottom: 0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Lupa Password",
                  style: TextStyle(color: Color.fromARGB(255, 249, 99, 50)),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Request Reset Password",
                    style: TextStyle(color: Color.fromARGB(255, 249, 99, 50)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

const String color = '#ff3636';
