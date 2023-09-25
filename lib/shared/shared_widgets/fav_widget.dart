import 'package:flutter/material.dart';
import '../../constants/constants.dart';


class FavWidget extends StatefulWidget {
  
  
 const FavWidget( {super.key});

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {
   bool isfav = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isfav ? Icons.favorite : Icons.favorite_border),
      color:isfav?Constants.kRedColor:Constants.kWhiteColor,
      iconSize: 20,
      onPressed: () {
        setState(() {
          isfav=!isfav;
        });
      },
    );
  }
}
