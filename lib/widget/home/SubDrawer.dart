import "package:flutter/material.dart";

class SubDrawer extends StatelessWidget {
  const SubDrawer({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 20),
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Icon(
                Icons.circle_outlined,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  name,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
              )
            ],
          )),
    );
  }
}
