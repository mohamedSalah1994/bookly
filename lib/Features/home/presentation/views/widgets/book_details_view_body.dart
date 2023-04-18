import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard kipling',
                      style: Styles.textStyle18
                          .copyWith(fontStyle: FontStyle.italic),
                    )),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    BookRating(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const BooksAction(),
                const Expanded(
                  child:  SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14,
                  ),
                ),
                  const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                 const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}