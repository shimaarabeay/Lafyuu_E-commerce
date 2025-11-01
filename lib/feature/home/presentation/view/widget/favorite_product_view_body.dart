import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lufyuu_ecommerce/feature/home/presentation/view/widget/favorite_product_grid.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class FavoriteProductViewBody extends StatefulWidget {
  const FavoriteProductViewBody({super.key});

  @override
  State<FavoriteProductViewBody> createState() =>
      _FavoriteProductViewBodyState();
}

class _FavoriteProductViewBodyState extends State<FavoriteProductViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/left_arrow.svg')),
                    Spacer(),
                    Text(
                      'Favorite Product',
                      style: TextStyles.bold18
                          .copyWith(color: ColorManager.neutralDark),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [FavoriteProductGrid()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
