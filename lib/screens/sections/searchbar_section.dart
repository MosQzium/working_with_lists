import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../reusable_widget/reusable_btn.dart';

class SearchbarSection extends StatelessWidget {
  final ValueChanged<String> onChange;
  final VoidCallback onPress;

  const SearchbarSection({
    super.key,
    required this.onPress,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550.0,
      decoration: kListviewDecoration,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                decoration: fInputBorderStyle,
                onChanged: onChange,
              ),
            ),
            SizedBox(width: 30.0),
            ReusableBtn(
              title: 'Add',
              color: Colors.redAccent,
              function: onPress,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
