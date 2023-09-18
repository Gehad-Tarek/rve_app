import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/menu_screen/edit_user_name_screen.dart';

class ProfileSectionWidget extends StatefulWidget {
  const ProfileSectionWidget({super.key});
  @override
  State<ProfileSectionWidget> createState() => _ProfileSectionWidgetState();
}

class _ProfileSectionWidgetState extends State<ProfileSectionWidget> {
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * 0.01),
      height: height * 0.11,
      width: width - width * 0.1,
      decoration: BoxDecoration(
        color: Constants.kWhiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Constants.kGreyColor.withOpacity(0.7)),
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
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.02,
                                vertical: height * 0.02),
                            height: height * 0.2,
                            width: width,
                            child: Column(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.camera_alt),
                                  title: const Text(
                                    'Camera',
                                    //  style: SharedFonts.primaryBlackFont
                                  ),
                                  onTap: () {
                                    getImg(ImageSource.camera);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                      Icons.picture_in_picture_rounded),
                                  title: const Text(
                                    'Gallery',
                                    //  style: SharedFonts.primaryBlackFont
                                  ),
                                  onTap: () {
                                    getImg(ImageSource.gallery);
                                  },
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  //  left: 0.4,
                  //   //top: 1,
                  //  right: 0.1,//0.05
                  //   // bottom: 2,
                  // top: height * 0.005,
                  child: Container(
                    height: height * 0.05,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: width * 0.07),
                    width: width * 0.075,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.kDarkGreyColor,
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Constants.kWhiteColor,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,Mohamed Hosny',
                style: Constants.TtitleBlackFont.copyWith(fontSize: 15),
              ),
              Text(
                'Check Your Profile',
                style: Constants.TsubGreyFont,
              ),
            ],
          ),
          SizedBox(
            width: width * 0.04,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const EditUserNameScreen()));
            },
            child: Container(
                height: height * 0.045,
                width: width * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.kDarkGreyColor,
                ),
                child: Icon(
                  Icons.edit_square,
                  color: Constants.kWhiteColor,
                  size: 18,
                )),
          ),
        ],
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
