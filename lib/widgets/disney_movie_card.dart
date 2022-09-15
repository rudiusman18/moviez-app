import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class DisneyMovieCard extends StatelessWidget {
  String image;
  String title;
  String genre;
  int star;

  // ignore: use_key_in_widget_constructors
  DisneyMovieCard({
    required this.image,
    required this.title,
    required this.genre,
    required this.star,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 24,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 20,
            ),
            width: 100,
            height: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage(
                  'assets/$image',
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: avenirHeavyTextStyle.copyWith(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              Text(
                genre,
                style: avenirBookTextStyle.copyWith(
                  fontSize: 16,
                  color: subtitleColor,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  for (int i = 0; i < star; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 2,
                      ),
                      child: Image.asset(
                        'assets/activate_star.png',
                        height: 18,
                        width: 18,
                      ),
                    ),
                  for (int j = 0; j < 5 - star; j++)
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 2,
                      ),
                      child: Image.asset(
                        'assets/deactivate_star.png',
                        height: 18,
                        width: 18,
                      ),
                    ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
