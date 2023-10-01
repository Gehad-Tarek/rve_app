import 'package:flutter/material.dart';
import 'package:rev_app/shared/shared_widgets/fild_components.dart';
import 'package:rev_app/shared/shared_widgets/text_button_widget.dart';
import '../../constants/constants.dart';
import '../../shared/shared_widgets/custom_app_bar_title.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();
  GlobalKey<FormState> _formKeySearchScreen = GlobalKey<FormState>();

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
          // title: CustomAppBarTitle(),
          centerTitle: false,
          title: Image.asset(
            Constants.kLogoImage,
            color: Constants.kWhiteBackground,
            width: width * 0.18,
          ),
        ),
        body: Form(
          key: _formKeySearchScreen,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.8,
                      child: CustomField(FieldModel(
                        controller: searchController,
                        //   icon: Icons.email,
                        labelTxt: 'search',
                        type: TextInputType.text,
                        fieldType: FieldType.search,
                        onsumbit: () {},
                        key: searchKey,
                      )),
                    ),
                    InkWell(
                      onTap: () {
                        print('cancel button');
                      },
                      child: Text(
                        'Cancel ',
                        style:
                            TextStyle(color: Constants.kBlueColor, fontSize: 16,height: 1.2,fontWeight: FontWeight.w200),
                      ),
                    )
                  ],
                ),
              ),

              //  Expanded(
              //    child: Container(
              //     color: Constants.kBlackColor,
              //    ),
              //  ),
              //  ListTile(
              //   leading:       CustomField(FieldModel(
              //           controller: searchController,
              //           //   icon: Icons.email,
              //           labelTxt: 'search',
              //           type: TextInputType.text,
              //           fieldType: FieldType.search,
              //           onsumbit: () {},
              //           key: searchKey,

              //         )),
              //         trailing:  TextButtonWidget(onPressed: (){}, text: 'Cancle', decoration: TextDecoration.underline, colorText: Constants.kBlueColor),
              //  ),
            ],
          ),
        ));
  }
}
