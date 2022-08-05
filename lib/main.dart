import 'package:flutter/material.dart';
import 'package:my_app/layout/button-column.dart';
import 'package:my_app/layout/lake.image.dart';
import 'package:my_app/layout/section-title.dart';
import 'package:my_app/layout/description-section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        // body: const Center(child: RandomWordsList()),
        body: Column(children: [
          LakeImage(),
          SectionTitle(),
          ButtonColumn(),
          DescriptionSection()
        ]),
      ),
    );
  }
}
