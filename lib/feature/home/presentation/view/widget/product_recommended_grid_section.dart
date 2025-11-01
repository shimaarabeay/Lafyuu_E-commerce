import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import 'recommended_product_item.dart';

class ProductRecommendedGridSection extends StatelessWidget {
  const ProductRecommendedGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'image': 'https://images.unsplash.com/photo-1606813902917-22bb7d21e8b4',
        'title': 'Nike Air Max 270 React ENG',
        'price': '\$299,43',
        'oldPrice': '\$534,33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1593032457869-9b8f76a9e7d3',
        'title': 'QUILTED MAXI CROSS BAG',
        'price': '\$299,43',
        'oldPrice': '\$534,33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f',
        'title': 'Stylish Wooden Bag',
        'price': '\$299,43',
        'oldPrice': '\$534,33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
        'title': 'Red Nike Shoes',
        'price': '\$299,43',
        'oldPrice': '\$534,33',
        'discount': '24% Off',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended for You',
            style: TextStyles.bold18.copyWith(color: ColorManager.neutralDark),
          ),
          const SizedBox(height: 16),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return RecommendedProductItem(image: product['image'], newPrice: product['price'], oldPrice: product['oldPrice'], title: product['title'], discount: product[ 'discount']);
            },
          ),
        ],
      ),
    );
  }
}
