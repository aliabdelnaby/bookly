import 'package:book_ly/core/utils/assets.dart';
import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:book_ly/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            "Best Seller",
            style: AppStyles.textStyle18,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

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
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter And the Golbet of Fire",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStyles.textStyle20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
