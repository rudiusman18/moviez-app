import 'package:flutter/material.dart';
import 'package:moviez/search_page.dart';
import 'package:moviez/shared/theme.dart';
import 'package:moviez/widgets/disney_movie_card.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style: avenirBlackTextStyle.copyWith(
                      fontSize: 28,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'Watch much easier',
                    style: avenirBookTextStyle.copyWith(
                        fontSize: 16, color: subtitleColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
              width: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(
                        25,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SearchPage();
                      },
                    ),
                  );
                },
                child: Image.asset(
                  'assets/search_icon.png',
                  height: 22,
                  width: 22,
                ),
              ),
            ),
          ],
        ),
      );
    }

    featuredMovie({
      required String title,
      required String genre,
      required int star,
      required String img,
    }) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 27,
                  ),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                      image: AssetImage('assets/$img'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 244,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff5E38E5).withOpacity(0.4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: avenirHeavyTextStyle.copyWith(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          genre,
                          style: avenirBookTextStyle.copyWith(
                            fontSize: 16,
                            color: subtitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  for (int j = 0; j < 5 - star; j++)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                      ),
                      child: Image.asset(
                        'assets/deactivate_star.png',
                        width: 18,
                      ),
                    ),
                  for (int i = 0; i < star; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                      ),
                      child: Image.asset(
                        'assets/activate_star.png',
                        width: 18,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 29,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              backgroundColor1,
              backgroundColor2,
            ],
          ),
        ),
        child: ListView(
          children: [
            header(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  featuredMovie(
                    title: 'John Wick 4',
                    genre: 'Action, Crime',
                    img: 'movie1.png',
                    star: 5,
                  ),
                  featuredMovie(
                    title: 'Bohemian',
                    genre: 'Documentary',
                    img: 'movie2.png',
                    star: 3,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            // NOTE: From Disney Title
            Container(
              margin: const EdgeInsets.only(
                left: 24,
                top: 27,
              ),
              child: Text(
                'From Disney',
                style: avenirBlackTextStyle.copyWith(
                  color: primaryColor,
                  fontSize: 24,
                ),
              ),
            ),
            // NOTE: Disney Content
            DisneyMovieCard(
              image: 'movie3.png',
              title: 'Mulan Session',
              genre: 'History, War',
              star: 3,
            ),
            DisneyMovieCard(
              image: 'movie4.png',
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              star: 5,
            ),
            const SizedBox(
              height: 43,
            ),
          ],
        ),
      ),
    );
  }
}
