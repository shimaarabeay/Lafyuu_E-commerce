import 'package:flutter/material.dart';

import 'offer_grid_section_item.dart';

class OfferGridSection extends StatelessWidget {
  const OfferGridSection({super.key});

  @override
  Widget build(BuildContext context) {

    final products = [
      {
        'image': 'https://images.unsplash.com/photo-1606813902917-7d48e8e0c80e', // لينك صورة حذاء
        'name': 'Nike Air Max 270 React ENG',
        'price': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1585238341986-3e6f9a4b8a35',
        'name': 'Red Hand Bag',
        'price': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1588167056540-8b1c1e95b4b0',
        'name': 'Woven Bag',
        'price': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a',
        'name': 'Nike Air Max 270 React ENG',
        'price': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return OfferGridSectionItem (
            image: product['image']!,
            title: product['name']!,
           newPrice: product['price']!,
            oldPrice: product['oldPrice']!,
            discount: product['discount']!,
          );
        },
      ),
    );
  }
}
