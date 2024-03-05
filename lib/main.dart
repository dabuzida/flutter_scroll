import 'package:flutter/material.dart';
import 'package:flutter_scroll/my_scroll.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Container',
//       home: MyContainer(),
//     );
//   }
// }

// class MyContainer extends StatelessWidget {
//   const MyContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Container'),
//         elevation: 0,
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: const MyIntrinsic(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scroll',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scroll'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const MyScroll(),
      ),
    );
  }
}
