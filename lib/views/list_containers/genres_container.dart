import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:les_musics/model/enums/genre.dart';
import 'package:les_musics/model/services/music_handler.dart';
import 'package:les_musics/views/cells/genre_cell.dart';

class GenresContainer extends StatelessWidget {
  List<Genre> genres = MusicHandler().allGenres();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Genres musicaux", style: GoogleFonts.signika(fontSize: 20),),
          Container(
            height: 75,
            child: ListView.builder(
              itemCount: genres.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => GenreCell(genre: genres[index]))
            ),
          )
        ],
      ),
    );
  }
}