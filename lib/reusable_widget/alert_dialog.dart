import 'dart:math';

import 'package:flutter/material.dart';
import 'package:working_with_lists/reusable_widget/reusable_btn.dart';

import '../constants/constants.dart';
import '../model/gameModel.dart';

Future<GameModel?> myAlertBox(BuildContext context) async {
  String title = '';
  String type = '';
  String desc = '';
  int age = 0;

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Add Items'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: fInputBorderStyle.copyWith(hintText: 'title'),
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: fInputBorderStyle.copyWith(hintText: 'type'),
              onChanged: (value) {
                type = value;
              },
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: fInputBorderStyle.copyWith(hintText: 'description'),
              onChanged: (value) {
                desc = value;
              },
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: fInputBorderStyle.copyWith(hintText: 'age'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                age = int.tryParse(value) ?? 0;
              },
            ),
          ],
        ),
        actions: [
          ReusableBtn(
            title: 'Add',
            color: Colors.redAccent,
            function: () {
              Navigator.pop(
                context,
                GameModel(
                  title: title,
                  type: type,
                  description: desc,
                  age: age,
                  id: Random().nextInt(1000),
                ),
              );
            },
            textColor: Colors.white,
          ),
        ],
      );
    },
  );
}
