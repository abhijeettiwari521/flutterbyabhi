import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 1;
  final String name = "Abhi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my app $days by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
