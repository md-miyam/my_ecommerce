import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? textFontSize;
  final double? height;
  final double? width;
  final double? buttonMargin;
  final double? verticalChildPadding;
  final String? prefixIcon;
  final double? prefixIconHeight;
  final String? suffixIcon;
  final double? suffixIconHeight;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
    this.width,
    this.color,
    this.textColor,
    this.verticalChildPadding,
    this.borderColor,
    this.prefixIconHeight,
    this.suffixIconHeight,
    this.textFontSize,
    this.borderRadius,
    this.onTap,
    this.buttonMargin,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: buttonMargin?.w ?? 0),
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColors.blackColor,
          borderRadius: BorderRadiusGeometry.circular(borderRadius?.r ?? 10.r),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              Flexible(
                child: Image.asset(
                  prefixIcon!,
                  height: prefixIconHeight?.h ?? 20.h,
                ),
              ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: verticalChildPadding ?? 12.h,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: textFontSize ?? 16.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor ?? AppColors.whiteColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (suffixIcon != null)
              Flexible(
                child: Image.asset(
                  suffixIcon!,
                  height: suffixIconHeight?.h ?? 20.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
