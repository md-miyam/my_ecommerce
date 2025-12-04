import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;        // current rating
  final int maxRating;     // total stars
  final double size;
  final Color filledColor;
  final Color emptyColor;

  const StarRating({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.size = 32,
    this.filledColor = Colors.orange,
    this.emptyColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxRating, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star,
          color: index < rating ? filledColor : emptyColor,
          size: size,
        );
      }),
    );
  }
}
