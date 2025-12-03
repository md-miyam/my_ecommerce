import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/image_path.dart';

class CustomStar extends StatelessWidget {
  final double height;
  final double width;
  const CustomStar({
    super.key, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(ImagePath.StarImage, height: height.h, width: width.w),
      SizedBox(width: 6.w),
      Image.asset(ImagePath.StarImage, height: height.h, width: width.w),
      SizedBox(width: 6.w),
      Image.asset(ImagePath.StarImage, height: height.h, width: width.w),
      SizedBox(width: 6.w),
      Image.asset(ImagePath.StarImage, height: height.h, width: width.w),
      SizedBox(width: 6.w),
      Image.asset(
        ImagePath.StarGrayIamge,
        height: 22.h,
        width: 24.w,
      ),
    ],);
  }
}