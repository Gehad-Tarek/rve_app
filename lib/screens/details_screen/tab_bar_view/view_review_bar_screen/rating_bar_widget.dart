import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatefulWidget {
  const RatingBarWidget({super.key});

  @override
  State<RatingBarWidget> createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends State<RatingBarWidget> {
   late var _ratingController = TextEditingController(text: '0.0');
  double _rating = 0.0;
  int _ratingBarMode = 1;
  double _initialRating = 0.0;
  List ratings = [];
  void _addRating() {
    setState(() {
      ratings.add(_ratingController);
      _ratingController.clear();
    });
  }

  @override
  void dispose() {
    //_commentController.dispose();
    _ratingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return RatingBar.builder(
          initialRating: _initialRating,
          minRating: 1,
          direction: Axis.horizontal,
          // direction: _isVertical ? Axis.vertical : Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 20.0,
          itemPadding:const EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) =>const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          updateOnDrag: true,
        );
  }
}