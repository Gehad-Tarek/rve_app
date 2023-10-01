import 'package:flutter/material.dart';

import 'item_list_view_review.dart';

class ViewReviewBarScreen extends StatefulWidget {
  const ViewReviewBarScreen({super.key});

  @override
  State<ViewReviewBarScreen> createState() => _ViewReviewBarScreenState();
}

class _ViewReviewBarScreenState extends State<ViewReviewBarScreen> {
 
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // decoration: BoxDecoration(color: Constants.kWhiteBackground),
      constraints: BoxConstraints(maxWidth: width * 0.02),
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ItemListViewReview();
                },
                itemCount: 4,
              ),
            ),
          ]),
    );
  }
 }
