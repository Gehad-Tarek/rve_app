import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rev_app/constants/constants.dart';

class PartitionMenueScreen extends StatefulWidget {
  const PartitionMenueScreen({super.key});

  @override
  State<PartitionMenueScreen> createState() => _PartitionMenueScreenState();
}

class _PartitionMenueScreenState extends State<PartitionMenueScreen> {
  File? pickedImage;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.2,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height: height > 800 ? height * 0.65 : height * 0.75,
        width: width * 0.74,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: width * 0.01),
              height: height * 0.11,
              width: width - width * 0.1,
              decoration: BoxDecoration(
                color: Constants.kWhiteColor,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: Constants.kGreyColor.withOpacity(0.7)),
              ),
              child: Row(
                children: [
                  SizedBox(
                  //  height: height*0.2,width: width*0.2,
                   width: width * 0.15,
                    child: Stack(
                      fit: StackFit.passthrough,
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.15,
                          //alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('${Constants.kBeachImage}'),
                                fit: BoxFit.cover),
                            //color: Colors.black,
                            //image: 
                          ),
                        ),
                        InkWell(
                          onTap: () {
                             showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      getImg(ImageSource.camera);
                                    },
                                    child: Text('Camera',
                                      //  style: SharedFonts.primaryBlackFont
                                        ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      getImg(ImageSource.gallery);
                                    },
                                    child: Text('Gallery',
                                        //style: SharedFonts.primaryBlackFont
                                        ),
                                  ),
                                ],
                              ),
                            );
                          });
                          },
                          child: Positioned(
                         // left: 0.0,
                            //top: 1,
                           right: 0.03,//0.05
                            // bottom: 2,
                                               top: height * 0.005,
                            child: Container(
                              height: height*0.05,
                              alignment: Alignment.center,
                              width: width * 0.075,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constants.kDarkGreyColor,
                              ),
                              child: Icon(Icons.camera_alt_outlined,color: Constants.kWhiteColor,size: 18,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              '  Menu',
              style: Constants.TtitleBlackFont.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
   void getImg(ImageSource source) async {
    XFile? img = await ImagePicker().pickImage(source: source);
    try {
      setState(() {
        pickedImage = File(img!.path);
      });
    } catch (e) {}
  }
}
