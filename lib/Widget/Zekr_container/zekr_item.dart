import 'package:flutter/material.dart';

import 'package:azkarcore/Model/Zekr.dart';
import 'package:azkarcore/Widget/Zekr_container/Counter.dart';

class zekrItem extends StatelessWidget {
  const zekrItem({super.key, required this.AZekr});

  final Zekr AZekr;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all((height / width) * 5),
      padding: EdgeInsets.all((height / width) * 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            AZekr.zekr,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: (height / width) * 12,
            ),
          ),
          SizedBox(height: height * 0.02),
          counter(Count_number: AZekr.count),
          SizedBox(height: height * 0.003),
          if (AZekr.description.isNotEmpty)
            Text(
              AZekr.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: (height / width) * 9,
              ),
            ),
        ],
      ),
    );
  }
}
