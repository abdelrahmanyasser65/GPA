import 'package:flutter/material.dart';
import 'package:gpacalculate/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GPA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          }, itemBuilder: (BuildContext context, int index) {
            return Card(
              color: primaryColor,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text('Level 1'),
                    const Text('Semester 1'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('Hours'),
                              Text('0'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('GPA'),
                              Text('3.0'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('Points'),
                              Text('20'),
                            ],
                          )
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            );
        },
        ),
      ),
    );
  }
}
