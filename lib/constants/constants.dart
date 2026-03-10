import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

const kAppbarDecoration = BoxDecoration(
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(2.0, 3.0),
      spreadRadius: 2.0,
      blurRadius: 3.0,
    ),
  ],
  gradient: LinearGradient(
    colors: [Colors.red, Colors.redAccent, Colors.white],
    end: AlignmentGeometry.bottomRight,
    begin: AlignmentGeometry.topLeft,
  ),
);

final kListviewDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 10,
      spreadRadius: 2,
      offset: Offset(0, 4),
    ),
  ],
  gradient: const LinearGradient(
    colors: [Colors.red, Colors.redAccent, Colors.white],
    end: AlignmentGeometry.bottomRight,
    begin: AlignmentGeometry.topLeft,
  ),
);

final fInputBorderStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Search Games',
  border: OutlineInputBorder(
    borderSide: BorderSide(width: 1.0, color: Colors.red),
    borderRadius: BorderRadius.circular(30.0),
  ),
);
