import 'package:gpacalculate/components/constants.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class GPAScreen extends StatelessWidget {
  final hoursController = TextEditingController();
  final pointsController = TextEditingController();

  GPAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Text(titleScreens[0], style: appBarStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(
          children: [
            Text(
              "Total Hours",
              style: subTitleStyle.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            buildTextFormField(hoursController, 'Enter your cumulative hours'),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Total Points",
              style: subTitleStyle.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            buildTextFormField(
                pointsController, 'Enter your cumulative points'),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                onPressed: () {},
                child: Text(
                  "Calculate",
                  style: titleSmallStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.teal,
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Hours", style: titleSmallStyle),
                      const SizedBox(
                        height: 3,
                      ),
                      Text('0',
                          style: subTitleStyle1.copyWith(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      Text("GPA", style: titleSmallStyle),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "0",
                        style: subTitleStyle1.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Points",
                        style: titleSmallStyle,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text('0',
                          style: subTitleStyle1.copyWith(color: Colors.white))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
