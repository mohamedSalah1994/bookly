import 'package:flutter/material.dart';


import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});
  //final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              borderRadius:BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99 \$',
              textColor: Colors.black,
            ),
          ),
              Expanded(
            child: CustomButton(
              backGroundColor: Color(0xffEF8262),
              borderRadius:BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: 'Free Preview',
              fontSize: 16,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}