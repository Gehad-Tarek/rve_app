import 'package:flutter/material.dart';
import 'message_screen.dart';
import 'section_connect_contact_us.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/constants.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final Uri urlWhatsApp = Uri.parse('https://wa.me/+201114553201');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          AppBarImageSigninAndUp(
            heightAppBarImage: height * 0.45,
            paddingHeiImage: height * 0.2,
            widthImage: width * 0.6,
            fontSizedStyle: Constants.TwhileBoldFont.copyWith(fontSize: 20),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            padding: EdgeInsets.only(left: width * 0.01, right: 5),
            child: Column(
              children: [
                Text(
                  '5 Hafez Ramdan street,Naser City,Cairo',
                  style: Constants.TtitleBlackFont.copyWith(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SectionConnectContactUs(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageScreen()));
                  },
                  heighImage: height * 0.025,
                  image: '${Constants.kMessageImages}',
                  text: 'Message',
                ),
                SizedBox(
                  height: height * 0.013,
                ),
                SectionConnectContactUs(
                    onTap: () => launch('tel://+201114553201'),
                    heighImage: height * 0.033,
                    image: '${Constants.kPhoneImages}',
                    text: 'Hotline'),
                SizedBox(
                  height: height * 0.013,
                ),
                SectionConnectContactUs(
                    onTap: () {
                      _launchUrl(urlWhatsApp);
                    },
                    heighImage: height * 0.033,
                    image: '${Constants.kWhatsAppImages}',
                    text: 'WhatsApp'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl($url) async {
    if (!await launchUrl($url)) {
      throw Exception('Could not launch ');
    }
  }
}
