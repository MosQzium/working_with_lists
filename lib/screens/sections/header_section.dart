import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: kAppbarDecoration.copyWith(
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 150.0,
        width: 550.0,
        child: Center(child: Text('Working with List', style: kTitleStyle)),
      ),
    );
  }
}
