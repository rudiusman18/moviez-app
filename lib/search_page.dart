import 'package:flutter/material.dart';
import 'package:moviez/widgets/disney_movie_card.dart';
import 'shared/theme.dart';

// ignore: use_key_in_widget_constructors
class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchControler = TextEditingController(text: '');

  Widget searchInput() {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 39,
      ),
      child: TextFormField(
        cursorColor: primaryColor,
        cursorHeight: 21,
        style: avenirRomanTextStyle.copyWith(
          fontSize: 16,
          color: primaryColor,
        ),
        controller: searchControler,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 16,
            ),
            child: Image.asset(
              'assets/search_icon.png',
              width: 22,
              height: 22,
            ),
          ),
          fillColor: whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: whiteColor,
            ),
          ),
          alignLabelWithHint: true,
          hintText: 'Search...',
          hintStyle: avenirRomanTextStyle.copyWith(
            fontSize: 16,
            color: subtitleColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget suggestMovieButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(
          top: 73,
          bottom: 70,
        ),
        width: 220,
        height: 50,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  37,
                ),
              )),
          child: Text(
            'Suggest Movie',
            style:
                avenirMediumTextStyle.copyWith(fontSize: 16, color: whiteColor),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            searchInput(),
            // NOTE: Search Result Title
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Search Result',
                      style: avenirBlackTextStyle.copyWith(
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' (3)',
                      style: avenirRomanTextStyle.copyWith(
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // NOTE: Movies Result
            DisneyMovieCard(
              image: 'movie5.png',
              title: 'The Dark II',
              genre: 'Horror',
              star: 4,
            ),
            DisneyMovieCard(
              image: 'movie6.png',
              title: 'The Dark Knight',
              genre: 'Heroes',
              star: 5,
            ),
            DisneyMovieCard(
              image: 'movie7.png',
              title: 'The Dark Tower',
              genre: 'Action',
              star: 4,
            ),
            // NOTE: Suggest Movie Button
            suggestMovieButton()
          ],
        ),
      ),
    );
  }
}
