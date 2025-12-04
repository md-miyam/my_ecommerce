import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/image_path.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_app_bar.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_divider.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_notification_button.dart';
import '../controllers/reviews_controller.dart';
import '../widget/custom_linearprogress_indicator.dart';
import '../widget/custom_reviews.dart';
import '../widget/custom_star_four.dart';

class ReviewsView extends GetView<ReviewsController> {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Most Relevant", "Item"];

    return Scaffold(
      appBar: CustomAppBar(
        title: "Reviews",
        actions: [CustomNotificationButton(onTap: () {})],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDivider(),
                Row(
                  children: [
                    Flexible(flex: 1,
                      child: Text(
                        "4.0",
                        style: AppTextStyles.bold64,
                      ),
                    ),SizedBox(width: 8.w,),
                    Flexible(flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          StarRating(rating: 5),
                          Text(
                            "1034 Ratings",
                            style: AppTextStyles.regular16,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    StarRating(rating: 5),
                    SizedBox(width: 5.w),
                    Expanded(child: CustomLinearProgressIndicator(value: .8)),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    StarRating(rating: 4),
                    SizedBox(width: 5.w),
                    Expanded(child: CustomLinearProgressIndicator(value: .6)),
                  ],
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Row(
                    children: [
                      StarRating(rating: 3),
                      SizedBox(width: 5.w),
                      Expanded(child: CustomLinearProgressIndicator(value: .4)),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Row(
                    children: [
                     StarRating(rating: 2),
                      SizedBox(width: 5.w),
                      Expanded(child: CustomLinearProgressIndicator(value: .2)),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Row(
                    children: [
                      StarRating(rating: 1),
                      SizedBox(width: 5.w),
                      Expanded(child: CustomLinearProgressIndicator(value: .1)),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                CustomDivider(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(flex: 1,
                      child: Text(
                        "45 Reviews",
                        style: AppTextStyles.bold16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Flexible(flex: 5,
                      child: DropdownButton<String>(
                        value: items.first,
                        items: items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                  ],
                ),
                CustomReviews(rating: 5,
                  textDayTypa: " \u2022 6 days ago",
                  image: ImagePath.StarImage,
                  textDay: "Wade Warren",
                  textReviews:
                  "The item is very good, my son likes it very much and plays every day.",
                ),
                SizedBox(height: 15.h),
                CustomDivider(),
                SizedBox(height: 10.h),
                CustomReviews(rating: 4,
                  textDayTypa: "\u2022 1 week ago",
                  image: ImagePath.StarGrayIamge,
                  textDay: "Guy Hawkins ",
                  textReviews:
                  "The seller is very fast in sending packet, I just bought it and the item arrived in just 1 day!",
                ),
                SizedBox(height: 15.h),
                CustomDivider(),
                SizedBox(height: 10.h),
                CustomReviews(rating: 4,
                  textDayTypa: "\u2022 2 weeks ago",
                  image: ImagePath.StarGrayIamge,
                  textDay: "Robert Fox",
                  textReviews:
                  "I just bought it and the stuff is really good! I highly recommend it!",
                ),
                SizedBox(height: 15.h),
                CustomDivider(),
                SizedBox(height: 10.h),
                StarRating(rating: 4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
