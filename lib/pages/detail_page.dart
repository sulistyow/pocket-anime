import 'package:flutter/material.dart';
import 'package:pocket_anime/model/anime_model.dart';
import 'package:pocket_anime/theme.dart';

class DetailPage extends StatelessWidget {
  final AnimeModel anime;

  const DetailPage({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Anime"),
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: margin16, right: margin16, bottom: margin16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          anime.poster,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: margin16,
                    ),
                    Expanded(
                      child: Text(
                        anime.name,
                        style: primaryTextStyle.copyWith(
                            fontSize: 20, fontWeight: semiBold),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Overview",
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: semiBold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      anime.overview,
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
