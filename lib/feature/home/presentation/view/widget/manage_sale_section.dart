import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import 'flash_sale_item.dart';

class ManageSaleSection extends StatelessWidget {
  const ManageSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> flashSaleItems = [
      {
        'image': 'https://images.unsplash.com/photo-1606813902917-22bb7d21e8b4',
        'title': 'FS - Nike Air Max 270 React',
        'newPrice': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1593032457869-9b8f76a9e7d3',
        'title': 'FS - QUILTED MAXI CROSS BAG',
        'newPrice': '\$299.43',
        'oldPrice': '\$534.33',
        'discount': '24% Off',
      },
      {
        'image': 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f',
        'title': 'FS - Red Heels Shoes',
        'newPrice': '\$199.99',
        'oldPrice': '\$350.00',
        'discount': '30% Off',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Manage Sale',
                style: TextStyles.bold18.copyWith(
                  color: ColorManager.neutralDark,
                ),
              ),
              Text('See More',
                  style: TextStyles.bold18.copyWith(
                    color: ColorManager.primaryBlue,
                  )),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: flashSaleItems.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final item = flashSaleItems[index];
                return  FlashSaleItem(
                  image: item['image'],
                  title: item['title'],
                  newPrice: item['newPrice'],
                  oldPrice: item['oldPrice'],
                  discount: item['discount'],
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
