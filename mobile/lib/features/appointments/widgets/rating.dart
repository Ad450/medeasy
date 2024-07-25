import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  final double rating;

  const Ratings({required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedRatingStars(
      initialRating: rating,
      minRating: 0.0,
      maxRating: 5.0,
      filledColor: Colors.amber,
      emptyColor: Colors.grey,
      filledIcon: Icons.star,
      halfFilledIcon: Icons.star_half,
      emptyIcon: Icons.star_border,
      onChanged: (double rating) {
        // Handle the rating change here
        debugPrint('Rating: $rating');
      },
      displayRatingValue: true,
      interactiveTooltips: true,
      customFilledIcon: Icons.star,
      customHalfFilledIcon: Icons.star_half,
      customEmptyIcon: Icons.star_border,
      starSize: 12.0,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      readOnly: false,
    );
  }
}
