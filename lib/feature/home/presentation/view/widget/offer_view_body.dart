import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import 'image_slider_item.dart';
import 'offer_grid_section.dart';


class OfferViewBody extends StatefulWidget {
  const OfferViewBody({super.key});

  @override
  State<OfferViewBody> createState() => _OfferViewBodyState();
}

class _OfferViewBodyState extends State<OfferViewBody> {
  final List<Map<String, dynamic>> images = [
  {
  'url': 'https://picsum.photos/600/400?1',
  'title': 'Product 1',
  'offer': '50%',
  'numbers': [1, 2, 3],
},
    {
      'url': 'https://picsum.photos/600/400?1',
      'title': 'Product 1',
      'offer': '50%',
      'numbers': [1, 2, 3],
    }];
  final int index =0;
  @override
  Widget build(BuildContext context) {
    final image =  images[index];
    return Scaffold(
      body: SafeArea(
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
                    'Super Flash Sale',
                    style: TextStyles.bold18
                        .copyWith(color: ColorManager.neutralDark),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.search_rounded),
                  )
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
                        children: [
                          SizedBox(
                            height: 210,
                            width: double.infinity,
                            child:  ImageSliderItem(
                              image: image['url'],
                              title: image['title'],
                              offer: image ['offer'],
                              numbers: image['numbers'],
                            ),
                          ),
                          OfferGridSection()


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
