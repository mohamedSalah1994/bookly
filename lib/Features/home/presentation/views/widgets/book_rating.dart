import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
     
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
         const Text(
          ' 4.8 ',
          style: Styles.textStyle16,
        ),
         Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}