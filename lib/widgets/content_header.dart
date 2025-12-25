import 'package:flutter/material.dart';
import 'package:netflix_ui/models/content_model.dart';

class ContentHeader extends StatelessWidget {
  final Content featureContent;

  const ContentHeader({super.key, required this.featureContent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featureContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //because of we are not positioning it then it will act in the same ->
        //position of the previous container. comment below for understand

        //for adding some feature in a widget just use stack
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        //for the title
        // SizedBox(
        //   width: 250.0,
        //   child: Image.asset(featureContent.titleImageUrl!),
        // ),
      ],
    );
  }
}
