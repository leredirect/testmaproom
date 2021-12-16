import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Position {
  Position({
    required this.fromLeft,
    required this.fromTop,
  });

  late final double fromLeft;
  late final double fromTop;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Position> positions = [
      Position(fromTop: 2.181, fromLeft: 2.82),
      Position(fromTop: 4.39, fromLeft: 2.512),
      Position(fromTop: 3.523, fromLeft: 2.512),
      Position(fromTop: 3.523, fromLeft: 1.921),
      Position(fromTop: 2.683, fromLeft: 1.431),
      Position(fromTop: 1.94, fromLeft: 2.82),
      Position(fromTop: 1.94, fromLeft: 4.3),
      Position(fromTop: 2.181, fromLeft: 4.3),
      Position(fromTop: 1.94, fromLeft: 21.5),
      Position(fromTop: 2.181, fromLeft: 21.5),
      Position(fromTop: 2.7, fromLeft: 21.5),
      Position(fromTop: 2.7, fromLeft: 5.92),
      Position(fromTop: 3.522, fromLeft: 21.5),
      Position(fromTop: 3.522, fromLeft: 5.92),
      Position(fromTop: 4.393, fromLeft: 21.5),
      Position(fromTop: 4.393, fromLeft: 5.92),
      Position(fromTop: 4.39, fromLeft: 1.921),
      Position(fromTop: 2.18, fromLeft: 1.53),
      Position(fromTop: 2.18, fromLeft: 1.287),
      Position(fromTop: 1.94, fromLeft: 1.53),
      Position(fromTop: 1.94, fromLeft: 1.287),
    ];
    var mq = MediaQuery.of(context).size;
    double sideSize = math.min(mq.width, mq.height);
    print(mq.height);
    return Scaffold(
        body: InteractiveViewer(
          child: Center(
            child: Stack(children: [
      Container(
            width: 1000,
            height: 1000,
            color: Colors.red,
            child: SvgPicture.asset(
              "assets/maps_tables/601_tables.svg",
              color: Colors.black,
            ),
      ),
      for (int i = 0; i < positions.length; i++)
            Positioned(
                child: Container(
                  width: sideSize/14,
                  height: sideSize/14,
                  color: Colors.green,
                ),
                top: mq.height / positions[i].fromTop,
                left: sideSize / positions[i].fromLeft),
    ]),
          ),
        ));
  }
}
// Widget build(BuildContext context) {
//   var mq = MediaQuery.of(context).size;
//   List<Position> positions = [
//     Position(fromTop: 516, fromLeft: 269),
//     Position(fromTop: 516, fromLeft: 319.5),
//     Position(fromTop: 567, fromLeft: 269),
//     Position(fromTop: 567, fromLeft: 319.5),
//     Position(fromTop: 2.683, fromLeft: 1.431),
//     Position(fromTop: 1.94, fromLeft: 2.82),
//     Position(fromTop: 1.94, fromLeft: 4.3),
//     Position(fromTop: 2.181, fromLeft: 4.3),
//     Position(fromTop: 1.94, fromLeft: 21.5),
//     Position(fromTop: 2.181, fromLeft: 21.5),
//     Position(fromTop: 2.7, fromLeft: 21.5),
//     Position(fromTop: 2.7, fromLeft: 5.92),
//     Position(fromTop: 3.522, fromLeft: 21.5),
//     Position(fromTop: 3.522, fromLeft: 5.92),
//     Position(fromTop: 4.393, fromLeft: 21.5),
//     Position(fromTop: 4.393, fromLeft: 5.92),
//     Position(fromTop: 4.39, fromLeft: 1.921),
//     Position(fromTop: 2.18, fromLeft: 1.53),
//     Position(fromTop: 2.18, fromLeft: 1.287),
//     Position(fromTop: 1.94, fromLeft: 1.53),
//     Position(fromTop: 1.94, fromLeft: 1.287),
//     Position(fromTop: 10.15, fromLeft: 1.343),
//   ];
//   return Scaffold(
//       body: Center(
//     child: Container(
//
//       color: Colors.red,
//       width: 1000,
//       height: 1000,
//       child: InteractiveViewer(
//         child: Center(
//           child: Stack(children: [
//             Image.asset(
//               "assets/maps_tables/601_tables.svg",
//               color: Colors.black,
//             ),
//             for (int i = 0; i < positions.length; i++)
//               Positioned(
//                 top: positions[i].fromTop,
//                 left: positions[i].fromLeft,
//                 child: ClipOval(
//                   child: Image.asset(
//                     "assets/avatar_placeholder.svg",
//                     width: 45,
//                     height: 45,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//           ]),
//         ),
//       ),
//     ),
//   ));
//   }
// }
