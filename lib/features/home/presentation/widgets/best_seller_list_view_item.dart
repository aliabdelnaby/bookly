import 'package:book_ly/constants.dart';
import 'package:book_ly/core/utils/assets.dart';
import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppAssets.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry Potter And the Golbet of Fire",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppStyles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  "J.K Rowling",
                  style: AppStyles.textStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: AppStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
