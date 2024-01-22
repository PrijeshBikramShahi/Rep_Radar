import 'package:flutter/material.dart';
import 'package:rep_radar/utils/shared/fontstyles.dart';

// ignore: must_be_immutable
class WorkoutTile extends StatefulWidget {
  WorkoutTile({
    super.key,
    required MyFontStyle fontStyle,
    required this.workoutName,
  }) : _fontStyle = fontStyle;
  final String workoutName;
  final MyFontStyle _fontStyle;

  @override
  State<WorkoutTile> createState() => _WorkoutTileState();
}

class _WorkoutTileState extends State<WorkoutTile> {
  double contHeight = 95;

  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          height: _selected ? 200 : 95,
          // child: NotSelected(widget: widget),
          child: _selected ? ExtendedContainer() : NotSelected(widget: widget),
        ),
      ),
    );
  }
}

class ExtendedContainer extends StatelessWidget {
  const ExtendedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TOTAL CALORIES BURN"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "3,585",
                        style: TextStyle(fontSize: 40),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "KCAL",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_upward)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TOTAL STEPS"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "36,985",
                        style: TextStyle(fontSize: 40),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("KCAL"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TOTAL DISTANCE"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "14,4",
                        style: TextStyle(fontSize: 40),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("KM"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NotSelected extends StatelessWidget {
  const NotSelected({
    super.key,
    required this.widget,
  });

  final WorkoutTile widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(left: 30),
          child: Text(
            "${widget.workoutName}",
            style: widget._fontStyle.dashboardTitle,
          ),
        )
      ],
    );
  }
}
