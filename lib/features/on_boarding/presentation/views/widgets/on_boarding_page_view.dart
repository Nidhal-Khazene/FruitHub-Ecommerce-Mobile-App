import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        const PageViewItem(
          image: Assets.assetsImagesOnBoardingImage1,
          backgroundImage: Assets.assetsImagesOnBoardingBackgroundImage1,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(children: [Text("Fruit"), Text("HUB")]),
        ),
      ],
    );
  }
}
