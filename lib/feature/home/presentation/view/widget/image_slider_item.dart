import 'package:flutter/material.dart';

class ImageSliderItem extends StatelessWidget {
  const ImageSliderItem({super.key, required this.image, required this.title, required this.offer, required this.numbers});
 final String image;
  final String title;
  final String offer;
  final List<int> numbers;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 205,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
            title
                ,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 6),

              Text(
               offer ,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: List.generate(3, (i) {
                  return Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                         '${numbers[i]}' ,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      ),
                      if (i < 3-1 )
                        const Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            ':',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
