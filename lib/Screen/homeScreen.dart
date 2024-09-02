import 'package:flutter/material.dart';
import 'package:azkarcore/Data/data.dart';

import 'package:azkarcore/Widget/grid_item.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AzkarCore"),
      ),
      body: Padding(
        padding: EdgeInsets.all((height / width) * 7),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: (height / width) * 10,
            mainAxisSpacing: (height / width) * 10,
          ),
          children: [
            for (var i in Header) grid_item(title: i),
          ],
        ),
      ),
    );
  }
}
