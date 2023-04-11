import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
     
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
         
          image: const DecorationImage(
            image: AssetImage(
              AssetData.testImage,
            ),
            fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}