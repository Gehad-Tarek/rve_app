import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/custom_app_bar_title.dart';
import 'package:rev_app/shared/shared_widgets/fav_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        backgroundColor: Constants.kBlueColor,
        elevation: 10,
        leading:IconButton(icon: Icon(Icons.arrow_back_ios,color: Constants.kWhiteColor,),onPressed: () {
          Navigator.pop(context);
        },) ,
        title: Text('Rixos Hotel',style: Constants.TwhileBoldFont.copyWith(fontSize: 20),),
        actions: [
          FavWidget(),
        ],
      ),
      body: ListView(),
    );
  }
}