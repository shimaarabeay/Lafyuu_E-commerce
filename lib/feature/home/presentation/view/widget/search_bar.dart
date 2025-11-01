import 'package:flutter/material.dart';

import '../../../../../core/widget/search_field.dart';

class CustomAppBarRow extends StatelessWidget {
  const CustomAppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 260,
          child: SearchField(
            hintText: 'Search Product',
            textInputType: TextInputType.text,
            suffixIcon: const Icon(Icons.search),
          ),
        ),
        const Spacer(),
        const Icon(Icons.favorite_border, color: Colors.black),
        const SizedBox(width: 16),
        const Icon(Icons.notifications_none_rounded, color: Colors.black),
      ],
    );
  }
}
