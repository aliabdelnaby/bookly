import 'package:book_ly/features/home/presentation/widgets/books_details_section.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:book_ly/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
