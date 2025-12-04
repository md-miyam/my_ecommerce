
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/image_path.dart';

class CustomStar4 extends StatelessWidget {
  final double height;
  final String? image;
  const CustomStar4({
    super.key, required this.height, this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children:
          List.generate(4, (index) =>
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Image.asset(
                    ImagePath.StarImage, height: height.h),
              )),

        ),if ( image!= null)
        Image.asset(image!,height: height.h)
      ],
    );
  }
}

