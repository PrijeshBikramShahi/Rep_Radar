import 'package:flutter/material.dart';
import 'package:rep_radar/utils/dashboard/dash_title.dart';
import 'package:rep_radar/utils/dashboard/workotu_tile.dart';
import 'package:rep_radar/utils/shared/fontstyles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List workouts = [
    ['Brisk Walk', ''],
    ['Running', ''],
    ['Arms', ''],
    ['Chest', ''],
    ['Back', ''],
    ['Legs', ''],
    ['Upper Body', ''],
    ['Lower Body', ''],
    ['Swimming', ''],
    ['Sports', ''],
  ];
  MyFontStyle _fontStyle = MyFontStyle();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardTitle(fontStyle: _fontStyle),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: workouts.length,
              itemBuilder: (context, index) {
                return WorkoutTile(
                  workoutName: workouts[index][0],
                  fontStyle: _fontStyle,
                );
              }),
        )
      ],
    );
  }
}
