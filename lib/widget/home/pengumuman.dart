import 'dart:ui';

import 'package:flutter/material.dart';

class PengumumanHome extends StatelessWidget {
  const PengumumanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "PENGUMUMAN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Color.fromRGBO(220, 53, 69, 1),
        ),
        bottomNavigationBar: BottomAppBar(
          height: AppBar().preferredSize.height,
          elevation: 0,
          child: Container(
            alignment: Alignment.center,
            child: TextButton(
              child: const Text(
                "LIHAT SEMUA",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
