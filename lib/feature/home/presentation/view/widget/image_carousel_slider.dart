import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'image_slider_item.dart';

class ImageCarouselSlider extends StatefulWidget {
  const ImageCarouselSlider({super.key});

  @override
  State<ImageCarouselSlider> createState() => _ImageCarouselExampleState();
}

class _ImageCarouselExampleState extends State<ImageCarouselSlider> {
  int currentIndex = 0;

  final List<Map<String, dynamic>> images = [
    {
      'url': 'https://picsum.photos/600/400?1',
      'title': 'Product 1',
      'offer': '50%',
      'numbers': [1, 2, 3],
    },
    {
      'url': 'https://picsum.photos/600/400?2',
      'title': 'Product 2',
      'offer': '50%',
      'numbers': [5, 6, 7],
    },
    {
      'url': 'https://picsum.photos/600/400?3',
      'title': 'Product 3',
      'offer': '50%',
      'numbers': [9, 10, 11],
    },
    {
      'url': 'https://picsum.photos/600/400?4',
      'title': 'Product 4',
      'offer': '50%',
      'numbers': [13, 14, 15],
    },
    {
      'url': 'https://picsum.photos/600/400?5',
      'title': 'Product 5',
      'offer': '50%',
      'numbers': [17, 18, 19],
    },
    {
      'url': 'https://picsum.photos/600/400?6',
      'title': 'Product 6',
      'offer': '50%',
      'numbers': [21, 22, 23],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              final image = images[index];
              return  ImageSliderItem(
                  image: image['url'],
                  title: image['title'],
                  offer:image ['offer'],
                  numbers: image['numbers'],
                );

            },
            options: CarouselOptions(
              height: 205,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex == index ? 12 : 8,
                height: currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? Colors.blueAccent
                      : Colors.grey.shade400,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
