import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/widgets/book_rating.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
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
        ],
      ),
    );
  }
}
