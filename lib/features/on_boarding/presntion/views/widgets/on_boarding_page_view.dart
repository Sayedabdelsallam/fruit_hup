import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/features/on_boarding/presntion/views/widgets/page_view_item.dart';
import '../../../../../core/theme/color_palette.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: 'assets/images/on_boarding_center1.svg',
          backgroundImage: 'assets/images/on_boarding_top1.svg',
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ',
              style: TextStyles.bold23,
              ),
              Text('HUB', style: TextStyles.bold23.copyWith(
                color: AppColors.orangeColor
              ),),
              Text('Fruit', style: TextStyles.bold23.copyWith(
                color: AppColors.greenColor
              ),),
            ],
          ),
        ),
        PageViewItem(
          isVisible:  false,
          image: 'assets/images/on_boarding_center2.svg',
          backgroundImage: 'assets/images/on_boarding_top2.svg',
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',

          title: Text(
            'ابحث وتسوق',
            style: TextStyles.bold23,
          ),
        ),
      ],
    );
  }
}
