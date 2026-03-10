import 'dart:core';

import 'package:flutter/material.dart';
import 'package:working_with_lists/data/data.dart';
import 'package:working_with_lists/model/gameModel.dart';
import 'package:working_with_lists/screens/sections/header_section.dart';
import 'package:working_with_lists/screens/sections/listview_section.dart';
import 'package:working_with_lists/screens/sections/searchbar_section.dart';

import '../reusable_widget/alert_dialog.dart';

class ProductScreen extends StatefulWidget {
  final String title;

  const ProductScreen({required this.title, super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late final List<GameModel> allGames;
  late List<GameModel> games;

  @override
  void initState() {
    super.initState();
    allGames = data.map((element) {
      return GameModel.fromMap(element);
    }).toList();
    games = List.of(allGames);
  }

  void deleteLogic(int id) {
    setState(() {
      games.removeWhere((element) {
        return element.id == id;
      });
      allGames.removeWhere((element) {
        return element.id == id;
      });
    });
  }

  void searchLogic(String query) {
    String q = query.trim().toLowerCase();
    setState(() {
      if (q.isNotEmpty) {
        games = allGames.where((element) {
          return element.title.toLowerCase().contains(q) ||
              element.type.toLowerCase().contains(q) ||
              element.description.toLowerCase().contains(q);
        }).toList();
      } else {
        games = List.of(allGames);
      }
    });
  }

  void addLogic(GameModel game) {
    setState(() {
      allGames.add(game);
      games = List.of(allGames);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderSection(),

          Expanded(
            child: Column(
              children: [
                SearchbarSection(
                  onPress: () async {
                    final game = await myAlertBox(context);
                    if (game != null) {
                      addLogic(game);
                    }
                  },
                  onChange: (value) {
                    searchLogic(value);
                  },
                ),
                ListviewSection(games: games, onDelete: deleteLogic),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
