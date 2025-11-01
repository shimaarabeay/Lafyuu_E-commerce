import 'package:flutter/material.dart';
import '../../../../../core/widget/custom_bottom_nav_bar.dart';
import 'category_list_view.dart';
import 'flash_sale_section.dart';
import 'image_carousel_slider.dart';
import 'manage_sale_section.dart';
import 'product_recommended_grid_section.dart';
import 'recommended_product_card.dart';
import 'search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),

      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: CustomAppBarRow(),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          const SizedBox(
                            height: 270,
                            width: double.infinity,
                            child: ImageCarouselSlider(),
                          ),
                          CategoryListView(),
                          FlashSaleSection(),
                          ManageSaleSection(),
                          RecommendedSection(),
                          ProductRecommendedGridSection(),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
