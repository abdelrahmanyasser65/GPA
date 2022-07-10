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
List<Widget>screens=const[
  GPAScreen(),
  Semester11Screen(),
  Semester12Screen(),
  SummerCourse1Screen(),
  Semester21Screen(),
  Semester22Screen(),
  SummerCourse2Screen(),
  Semester31Screen(),
  Semester32Screen(),
  SummerCourse3Screen(),
  Semester41Screen(),
  Semester42Screen(),
  SummerCourse4Screen(),
];