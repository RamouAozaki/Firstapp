import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_details.dart';
import 'package:flutter/material.dart';

class PlanningWidget extends StatelessWidget {
  final Planning planning;
  const PlanningWidget({super.key, required this.planning});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlanningDetails(planning: planning)));
        print("Cours de dev mobile");
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 15,
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: ListTile(
              title: Text(
                planning.titre,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(planning.date),
              trailing: Text(planning.lieu),
            ),
          ),
        ),
      ),
    );
  }
}
