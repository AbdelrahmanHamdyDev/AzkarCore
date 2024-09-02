import 'package:flutter/material.dart';
import 'package:azkarcore/Widget/Zekr_container/Zekr_item.dart';
import 'package:azkarcore/Data/data.dart';

class Zekrscreen extends StatelessWidget {
  const Zekrscreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          for (var i in Azkary.where((item) => item.category == title).toList())
            zekrItem(AZekr: i)
        ],
      ),
    );
  }
}
