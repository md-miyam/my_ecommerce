import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/app_text_styles.dart';
import 'custom_star_four.dart';

class CustomReviews extends StatelessWidget {
  final String textReviews;
  final String textDayTypa;
  final String textDay;
  final String image;
  final int rating;
  const CustomReviews({
    super.key, required this.textReviews, required this.textDay, required this.image, required this.textDayTypa, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      StarRating(rating: rating),
        SizedBox(height: 10.h,),
        Text(
          textReviews,
          style: AppTextStyles.regular14,
        ),SizedBox(height: 10.h,),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: textDay,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              TextSpan(
                  text:textDayTypa,
                  style: TextStyle(color:Colors.black)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
