import 'package:flutter/material.dart';

import 'constants.dart';

Widget buildTextFormField(controller, hint, validator) {
  return SizedBox(
    height: 50,
    child: TextFormField(
      validator: validator,
      focusNode: FocusNode(),
      cursorColor: Colors.black,
      style: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        filled: true,
        fillColor: Colors.black12,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.black12)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.black12)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.black12)),
      ),
    ),
  );
}

class BuildSemester extends StatelessWidget {
  String? select1;
  String? select2;
  String? select3;
  String? select4;
  String? select5;
  String? select6;
  String? select7;
  String? select8;
  String? select9;
  double? numSelect1;
  double? numSelect2;
  double? numSelect3;
  double? numSelect4;
  double? numSelect5;
  double? numSelect6;
  double? numSelect7;
  double? numSelect8;
  double? numSelect9;
  var hour1 = TextEditingController();
  var hour2 = TextEditingController();
  var hour3 = TextEditingController();
  var hour4 = TextEditingController();
  var hour5 = TextEditingController();
  var hour6 = TextEditingController();
  var hour7 = TextEditingController();
  var hour8 = TextEditingController();
  var hour9 = TextEditingController();

  BuildSemester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(14)),
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      height: double.infinity,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Course",
                style: titleLargeStyle.copyWith(color: Colors.black),
              ),
              Text("Credits",
                  style: titleLargeStyle.copyWith(color: Colors.black)),
              Text("Grade",
                  style: titleLargeStyle.copyWith(color: Colors.black)),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 1',
                hour1,
                numSelect1,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select1,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select1 = val;
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 2',
                hour2,
                numSelect2,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select2,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select2 = val;
                      //
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 3',
                hour3,
                numSelect3,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select3,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select3 = val;
                      //
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 4',
                hour4,
                numSelect4,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select4,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select4 = val;
                      //
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 5',
                hour5,
                numSelect5,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select5,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select5 = val;
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 6',
                hour6,
                numSelect6,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select6,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select6 = val;
                      //
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 7',
                hour7,
                numSelect7,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select7,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select7 = val;
                      //
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 8',
                hour8,
                numSelect8,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select8,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select8 = val;
                      //
                      // });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildRowItems(
                'Course 9',
                hour9,
                numSelect9,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 7),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButton<String>(
                    value: select9,
                    hint: const Text(
                      "- -",
                      style: TextStyle(fontSize: 12),
                    ),
                    items: listTitle.map((t) {
                      return DropdownMenuItem<String>(
                        value: t,
                        child: Center(
                            child: Text(
                          t,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        )),
                      );
                    }).toList(),
                    onChanged: (val) {
                      // setState(() {
                      //   select9 = val;
                      // });
                    }),
              ),
            ],
          ),
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
              child: const Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
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
                    const Text("Hours",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text('0',
                        style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            .copyWith(color: Colors.white))
                  ],
                ),
                Column(
                  children: [
                    const Text("GPA",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '0',
                      style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Points",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text('0',
                        style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            .copyWith(color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowItems(titel, controller, numSelect) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          titel,
          style: titleSmallStyle.copyWith(
              fontSize: 18, color: Colors.black87, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 65,
          height: 30,
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black),
            keyboardType: TextInputType.number,
            cursorColor: Colors.grey,
            cursorRadius: const Radius.circular(1),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey)),
            ),
          ),
        ),
      ],
    );
  }
}
