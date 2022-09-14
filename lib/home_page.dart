import 'package:flutter/material.dart';
import 'package:moviez/shared/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            Column(
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
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
