import 'package:animate_gradient/animate_gradient.dart';
import 'package:app_distribution_website/ui/web_page/uikit/fluid_button.dart';
import 'package:app_distribution_website/utils/apptypography.dart';
import 'package:app_distribution_website/utils/color.dart';
import 'package:app_distribution_website/utils/links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WebPage extends StatelessWidget {
  const WebPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      primaryColors: const [
        AppColors.black,
        AppColors.blue,
      ],
      secondaryColors: const [
        AppColors.blue,
        AppColors.black
      ],
      duration: const Duration(
        seconds: 10,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          minimum: EdgeInsets.symmetric(
            vertical: 58.h,
            horizontal: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Просим принять участие в бета-тестировании мобильного приложения*',
                textAlign: TextAlign.center,
                style: AppTypography.mainStyle.copyWith(
                  fontSize: 35.h,
                  fontWeight: FontWeight.w800,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 10.h,),
              SizedBox(height: 60.h),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FluidButton(
                      link: Links.iosLink,
                      isIos: true,
                    ),
                    FluidButton(
                      link: Links.androidLink,
                      isIos:false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                '*Мы не несеём ответственности за актуальность информации. Актуальную информацию уточняйте у представителя. Приложение не обрабатывает персональные данные.',
                textAlign: TextAlign.center,
                style: AppTypography.mainStyle.copyWith(
                  fontSize: 12.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
