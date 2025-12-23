import 'package:flutter/material.dart';
import 'package:netflix_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({super.key, this.scrollOffset = 0.00});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppButton(title: 'TV Shows', onTap: () => print('TV Shows')),
                  _AppButton(title: 'Movies', onTap: () => print('Movies')),
                  _AppButton(title: 'My List', onTap: () => print('My List')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
