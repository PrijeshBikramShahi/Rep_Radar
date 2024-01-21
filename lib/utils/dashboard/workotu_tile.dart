import 'package:flutter/material.dart';
import 'package:rep_radar/utils/shared/fontstyles.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({
    super.key,
    required MyFontStyle fontStyle,
    required this.workoutName,
  }) : _fontStyle = fontStyle;
  final String workoutName;
  final MyFontStyle _fontStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        height: 100,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$workoutName",
                style: _fontStyle.dashboardTitle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
