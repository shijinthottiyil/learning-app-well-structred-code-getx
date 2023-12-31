import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/quiz/quiz_view.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmptyCard extends StatelessWidget {
  const EmptyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.kNoData),
        Text(
          'It’s pretty lonely here,\ndon’t you think?',
          style: AppTypography.kBold24,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5.h),
        Text(
          'Create your first course\nand start selling.',
          style: AppTypography.kLight16,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.all(20.h),
          child: PrimaryButton(
            onTap: () {
              Get.to<void>(()=>const QuizView());
            },
            text: 'Create a Course',
          ),
        ),
      ],
    );
  }
}
