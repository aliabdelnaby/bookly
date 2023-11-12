import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/widgets/best_seller_list_view_item.dart';
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

