import 'package:flutter/material.dart';
import 'package:graph/screen/income.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Graph_Income(),
      }));
}
