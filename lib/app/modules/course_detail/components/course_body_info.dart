import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/home/components/course_owner_card.dart';
import 'package:eden_learning_app/app/modules/widgets/custom_painter/price_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseBodyInfo extends StatelessWidget {
  final Course course;
  const CourseBodyInfo({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30..h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            course.name,
            style: AppTypography.kBold24,
          ),
        ),
        SizedBox(height: AppSpacing.tenVertical),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            '${course.lessons.length} Lessons  • 1h 30m',
            style: AppTypography.kLight14,
          ),
        ),
        SizedBox(height: 25.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Row(
            children: [
              const PriceTag(),
              SizedBox(width: 10.w),
              Text(
                '\$ ${course.price.toInt()}',
                style: AppTypography.kLight16,
              ),
            ],
          ),
        ),
        SizedBox(height: AppSpacing.twentyVertical),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            course.description,
            style: AppTypography.kLight16,
          ),
        ),
        SizedBox(height: AppSpacing.twentyVertical),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: CourseOwnerCard(
            user: course.owner,
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
