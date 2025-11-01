import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class FlashSaleItem extends StatelessWidget {
  final String image;
  final String title;
  final String newPrice;
  final String oldPrice;
  final String discount;

  const FlashSaleItem({
    super.key,
    required this.image,
    required this.title,
    required this.newPrice,
    required this.oldPrice,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorManager.primaryBlue.withOpacity(0.15),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                image,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image,
                      size: 50, color: ColorManager.primaryBlue);
                },
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.bold14.copyWith(
                color: ColorManager.neutralDark,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              newPrice,
              style: TextStyles.bold16.copyWith(
                color: ColorManager.primaryBlue,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  oldPrice,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  discount,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
