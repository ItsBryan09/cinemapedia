import 'package:cinemapedia/domain/entitis/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToentity(Cast cast) => Actor(
      id: cast.id,
      name: cast.name,
      profilePath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt2Zem7vqFoKVJ2Cy-4Lu4Fxr5dNII5U-NHhs0YmhnI9dej0fco_ecpe8&s',
      character: cast.character);
}
