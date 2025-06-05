import 'dart:io';

import 'package:flutter/material.dart';
import 'package:utilidades/src/controllers/abaout_controller.dart';

class AboutView extends StatelessWidget {
  final AbaoutController controller = AbaoutController();

  AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final abaout = controller.getAbaout();
    return Padding(
      padding: EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(abaout.photoUrl),
              radius: 30,
            ),
            const SizedBox(height: 15,),
            Column(
              children: abaout.abaoutMe.map(
                (part) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    part,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                    ),
                )
                ).toList()
            ),
            SizedBox(height: 15,),
            Row(
              children: abaout.socialLinks.map((link){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      IconButton(onPressed:(){}, icon: Icon(link.icon),),
                        Text(link.name, style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  );
                }).toList(),
              
            )
          ],
        ),
      ),
    );
  }
}