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
      ],
    );
  }
}
