import 'package:flutter/material.dart';
import 'package:rep_radar/utils/shared/appbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(

        children: [
          Appbar(),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(5.0).copyWith(bottom: 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0).copyWith(top: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
                width: double.maxFinite,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0).copyWith(top: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.amber,
                        ),
                        width: MediaQuery.of(context).size.width / 1.5,
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
