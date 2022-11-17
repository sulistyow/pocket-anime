import 'package:flutter/material.dart';
import 'package:pocket_anime/model/anime_model.dart';
import 'package:pocket_anime/theme.dart';
import 'package:pocket_anime/widget/anime_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pocket Anime"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        children: listAnime.map((anime) {
          return AnimeCard(anime);
        }).toList(),
      ),
    );
  }
}
