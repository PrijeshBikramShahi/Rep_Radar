import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rep_radar/utils/shared/fontstyles.dart';

class DashboardTitle extends StatelessWidget {
  const DashboardTitle({
    super.key,
    required MyFontStyle fontStyle,
  }) : _fontStyle = fontStyle;

  final MyFontStyle _fontStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Workouts",
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: true,
              ),
              style: _fontStyle.dashboardTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.gear,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
