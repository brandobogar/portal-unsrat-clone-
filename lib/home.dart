import 'package:flutter/material.dart';
import 'package:portal_unsrat_clone/widget/home/HomeDrawer.dart';
import 'package:portal_unsrat_clone/widget/home/pengumuman.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white,
            expansionTileTheme: const ExpansionTileThemeData(
                textColor: Colors.black, iconColor: Colors.black)),
        home: Scaffold(
            drawer: const HomeDrawer(),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(220, 53, 69, 1),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(
                      Icons.calendar_month,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(
                      Icons.flag,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(
                      Icons.person,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: const Text(
                      "Beranda",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                      height: 250,
                      padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Halo, User!",
                                style: TextStyle(fontSize: 25)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: "Selamat datang di",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                              TextSpan(
                                text: " PORTAL INSPIRE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: " Universitas Sam Ratulangi.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18))
                            ])),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                color: Colors.blue,
                                padding: EdgeInsets.all(6),
                                alignment: Alignment.center,
                                height: 40,
                                width: 150,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.browser_not_supported,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(4, 2, 0, 0),
                                      child: Text(
                                        "Website Unsrat",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                color: Colors.blue,
                                padding: EdgeInsets.all(6),
                                alignment: Alignment.center,
                                height: 40,
                                width: 200,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.auto_graph,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(4, 2, 0, 0),
                                      child: Text(
                                        "Dashboard Unsrat",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(220, 53, 69, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.warning,
                            color: Colors.white,
                            size: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Perhatian !",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              left: BorderSide(
                                  width: 10,
                                  color: Color.fromRGBO(17, 122, 139, 1)))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Saat ini Anda sedang menempuh semester 2 T.A 2022/2023 Genap",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "MASA STUDI: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black)),
                            TextSpan(
                                text: "2 Semester",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black))
                          ])),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "SISA MASA STUDI MAKS. : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black)),
                            TextSpan(
                                text: "6 Semester",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black))
                          ]))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          height: 90,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  left: BorderSide(
                                      width: 10,
                                      color: Color.fromRGBO(17, 122, 139, 1)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "IPK : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "3.88",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black))
                              ])),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "SKS Lulus : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "12",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black))
                              ]))
                            ],
                          ))),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: PengumumanHome(),
                  )
                ],
              )),
            )));
  }
}
