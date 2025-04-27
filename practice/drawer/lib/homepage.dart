import "package:drawer/pages/firstpage.dart";
import "package:drawer/pages/fourthpage.dart";
import "package:drawer/pages/secondpage.dart";
import "package:drawer/pages/thirdpage.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),

          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("L O G O", style: TextStyle(fontSize: 35)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("page 1", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => firstpage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("page 2", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Secondpage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("page 3", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Thirdpage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("page 4", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Fourthpage  ()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
