import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0))),
        title: const Text("PROFILE"),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 248, 200, 200)),
        backgroundColor: Color.fromARGB(255, 43, 43, 39),
      ),
      backgroundColor: Color.fromARGB(255, 169, 163, 146),
      body: Stack(
        children: [
          Positioned(
              right: 140,
              top: 20,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.Gsymuz3WvVYQ4tIYrro_KAHaE8?pid=ImgDet&rs=1"),
                ),
              )),
          Positioned(
              right: 140,
              top: 110,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromARGB(255, 55, 123, 106)),
                child: Icon(Icons.camera_alt),
              )),
          Positioned(
              right: 5,
              top: 200,
              child: Container(
                  width: 400,
                  height: 300,
                  child: const Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.people),
                        title: Text("Name"),
                        subtitle: Text("cristiano ronaldo"),
                        trailing: Icon(Icons.edit),
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text("Bio"),
                        subtitle: Text("hey..!iam using whatsapp"),
                        trailing: Icon(Icons.edit),
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text("Phone"),
                        subtitle: Text("7902484578"),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
