import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> categories = [
      {
        'name': 'Man Shirt',
        'icon': Icons.checkroom, // أيقونة بديلة عن الصورة
      },
      {
        'name': 'Dress',
        'icon': Icons.accessibility, // دي مش موجودة فعليًا هنستخدم حاجة شبيهة تحت
      },
      {
        'name': 'Man Work\nEquipment',
        'icon': Icons.work_outline,
      },
      {
        'name': 'Woman Bag',
        'icon': Icons.shopping_bag_outlined,
      },
      {
        'name': 'Man Shoes',
        'icon': Icons.directions_walk_outlined,
      },
    ];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style:  TextStyles.bold18.copyWith(color: ColorManager.neutralDark,)
              ),
              Text(
                'More Category',
                style: TextStyles.bold18.copyWith(color: ColorManager.primaryBlue,)
              ),
            ],
          ),

          const SizedBox(height: 16),

          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorManager.primaryBlue.withOpacity(0.15),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        category['icon'],
                        size: 25,
                        color: ColorManager.primaryBlue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category['name'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        color:ColorManager.neutralGrey,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      )
    ;
  }
}
