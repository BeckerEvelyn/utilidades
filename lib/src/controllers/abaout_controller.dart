import 'package:flutter/material.dart';
import 'package:utilidades/src/models/abaout_model.dart';

class AbaoutController {

  AbaoutModel getAbaout(){
    return AbaoutModel(
      photoUrl: "https://avatars.githubusercontent.com/u/201951058?s=400&u=4f9c2c73a8873181e3af7ae3f85b69549760d7ee&v=4", 
      abaoutMe: [
        'Evelyn Becker',
        'Gosto de cozinhar, ler, ver filmes e séries, além de jogar jogos diversos.',
        '...'
      ], 
      socialLinks: [
        SocialLink(
          name: "Github", 
          icon: Icons.add, 
          url: "https://github.com/BeckerEvelyn"
          ),
        SocialLink(
          name: "Linkedin", 
          icon: Icons.add, 
          url: "https://linkedin.com/in/evelynbecker"
          ),
      ],
      );
  }
}