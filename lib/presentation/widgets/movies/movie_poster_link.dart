import 'dart:math';
import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entitis/movie.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoviePosterLink extends StatelessWidget {
  final Movie movie;

  const MoviePosterLink({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return FadeInUp(
      from: random.nextInt(100) + 80,
      delay: Duration(milliseconds: random.nextInt(450) + 0),
      child: GestureDetector(
        onTap: () => context.push('/home/0/movie/${movie.id}'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(movie.posterPath),
        ),
      ),
    );
  }
}
