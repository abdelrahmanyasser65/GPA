import 'package:flutter/material.dart';
import 'package:gpacalculate/components/constants.dart';
import 'package:gpacalculate/screens/drawer.dart';

class AddSemester extends StatelessWidget {
  const AddSemester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          drawerTitle[2],
          style: appBarStyle,
        ),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Level',
                      style: subTitleStyle1,
                    ),
                    DropdownButton(
                      items: level
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(
                                e,
                                style: subTitleStyle1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {},
                      value: level[0],
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      focusColor: Colors.white,
                      dropdownColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Semester',
                      style: subTitleStyle1,
                    ),
                    DropdownButton(
                      items: semester
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(
                                e,
                                style: subTitleStyle1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {},
                      value: semester[0],
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      focusColor: Colors.white,
                      dropdownColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Course name',style: subTitleStyle,),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,

                              ),
                              decoration:
                                  const InputDecoration(border: InputBorder.none,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Course hours',style: subTitleStyle,),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,

                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Course Points',style: subTitleStyle,),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
