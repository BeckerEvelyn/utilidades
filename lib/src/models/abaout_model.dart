import 'package:flutter/material.dart';

class AbaoutModel {
  final String photoUrl;
  final List<String> abaoutMe;
  final List<SocialLink> socialLinks;

  AbaoutModel({
    required this.photoUrl, 
    required this.abaoutMe, 
    required this.socialLinks,
    });
}


class SocialLink{
  final String name;
  final IconData icon;
  final String url;
  final Color color;

  SocialLink({
    required this.name, 
    required this.icon, 
    required this.url,
    required this.color
    });
}