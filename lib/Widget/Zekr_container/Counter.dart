import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class counter extends StatefulWidget {
  counter({super.key, required this.Count_number});

  int Count_number;

  @override
  State<counter> createState() {
    return _counterState();
  }
}

class _counterState extends State<counter> {
  bool Is_finish = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => {
        setState(
          () {
            if (widget.Count_number > 0) {
              widget.Count_number--;
              HapticFeedback.mediumImpact();
            }
            if (widget.Count_number == 0) {
              Is_finish = true;
            }
          },
        )
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height * 0.007),
        width: double.infinity,
        decoration: BoxDecoration(
          color: (Is_finish)
              ? Theme.of(context).colorScheme.outline
              : Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Text(widget.Count_number.toString()),
      ),
    );
  }
}
