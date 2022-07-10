import 'package:flutter/material.dart';

import '../screens/semersters/GPa.dart';
import '../screens/semersters/level1/semester1.dart';
import '../screens/semersters/level1/semester2.dart';
import '../screens/semersters/level1/summer_course.dart';
import '../screens/semersters/level2/semester1.dart';
import '../screens/semersters/level2/semester2.dart';
import '../screens/semersters/level2/summer_course.dart';
import '../screens/semersters/level3/semester1.dart';
import '../screens/semersters/level3/semester2.dart';
import '../screens/semersters/level3/summer_course.dart';
import '../screens/semersters/level4/semester1.dart';
import '../screens/semersters/level4/semester2.dart';
import '../screens/semersters/level4/summer_course.dart';

Color primaryColor = Color(int.parse('FF009788',radix: 16,),);
TextStyle titleSmallStyle=const TextStyle(
    fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white
);
TextStyle subTitleStyle=const TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold,color: Colors.white);
TextStyle titleLargeStyle=const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontStyle: FontStyle.italic);
TextStyle subTitleStyle1=const TextStyle(
    fontSize: 20,
    color: Colors.white70,
    fontWeight: FontWeight.w500);
TextStyle appBarStyle=const TextStyle(
    fontSize: 28,fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white
);

List title=[
  'GPA',
  'Level 1',
  'Level 1',
  'Level 1',
  'Level 2',
  'Level 2',
  'Level 2',
  'Level 3',
  'Level 3',
  'Level 3',
  'Level 4',
  'Level 4',
  'Level 4',
];
List subTitle=[
  '',
  'semester 1',
  'semester 2',
  'summer course',
  'semester 1',
  'semester 2',
  'summer course',
  'semester 1',
  'semester 2',
  'summer course',
  'semester 1',
  'semester 2',
  'summer course',
];
List titleScreens=[
  'GPA',
  'Semester 1',
  'Semester 2 ',
  'Summer Course',
];
List<Widget>screens=[
  GPAScreen(),
 const Semester11Screen(),
  const Semester12Screen(),
  const SummerCourse1Screen(),
  const Semester21Screen(),
  const Semester22Screen(),
  const SummerCourse2Screen(),
  const Semester31Screen(),
  const Semester32Screen(),
  const SummerCourse3Screen(),
  const Semester41Screen(),
  const Semester42Screen(),
  const SummerCourse4Screen(),
];