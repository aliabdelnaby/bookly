import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/widgets/book_rating.dart';
import 'package:book_ly/features/home/presentation/widgets/books_action.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:book_ly/features/home/presentation/widgets/similar_books_list_view.dart';
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
                children: [
                  const CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .2),
                    child: const CustomBookImage(),
                  ),
                  const SizedBox(height: 43),
                  const Text(
                    "The Jungle Book",
                    style: AppStyles.textStyle30,
                  ),
                  const SizedBox(height: 6),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "Rudyard Kipling",
                      style: AppStyles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: 37),
                  const BooksAction(),
                  const Expanded(child: SizedBox(height: 50)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: AppStyles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SimilarBooksListView(),
                  const SizedBox(height: 40),
                ],
              ),
            )),
      ],
    );
  }
}
