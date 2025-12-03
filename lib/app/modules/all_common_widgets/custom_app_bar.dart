import 'package:flutter/material.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';
import 'custom_arrow_back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  const CustomAppBar({super.key, this.title, this.actions, this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: CustomArrowBackButton(),
      title: Text(title ?? '', style: AppTextStyles.bold22),
      centerTitle: centerTitle ??  true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
