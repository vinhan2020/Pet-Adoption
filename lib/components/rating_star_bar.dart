import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStar extends StatefulWidget {

  const RatingStar({
    Key? key,
  }) : super(key: key);

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
        initialRating: 4,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 20,
        ratingWidget: RatingWidget(
            full: const Icon(Icons.star, color: Colors.orange),
            half: const Icon(
              Icons.star_half,
              color: Colors.orange,
            ),
            empty: const Icon(
              Icons.star_outline,
              color: Colors.orange,
            )),
        onRatingUpdate: (value) {
          setState(() {
            _ratingValue = value;
          });
        });
  }
}
