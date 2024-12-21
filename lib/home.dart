import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planning> datas = [
    Planning(
        "cours de dev mobile", "sup management", "description", "29 nov 2024"),
    Planning(
        "cours de dev mobile1", "sup management", "description", "29 nov 2024"),
    Planning(
        "cours de dev mobile2", "sup management", "description", "29 nov 2024"),
    Planning(
        "cours de dev mobile3", "sup management", "description", "29 nov 2024"),
    Planning(
        "cours de dev mobile4", "sup management", "description", "29 nov 2024"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page d'accueil"),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, int index) {
              return PlanningWidget(planning: datas[index]);
            }));
  }
}
