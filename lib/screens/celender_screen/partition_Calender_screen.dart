import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../reply_done_screen.dart/reply_done_screen.dart';
import '../../shared/shared_widgets/elevated_button_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class PartitionCalenderScreen extends StatefulWidget {
  const PartitionCalenderScreen({super.key});

  @override
  State<PartitionCalenderScreen> createState() =>
      _PartitionCalenderScreenState();
}

class _PartitionCalenderScreenState extends State<PartitionCalenderScreen> {
  DateTime today = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? firstDay;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _selectedDay = today;
    firstDay = _selectedDay;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    // setState(() {
    //   today=selectedDay;
    // });
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        today = focusedDay;
        _selectedDay = selectedDay;
        // _selectedEvents = _getEventsForDay(selectedDay);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.22,
      left: width * 0.07,
      right: width * 0.07,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height: height <= 667 ? height * 0.77 : height * 0.67, //48
        width: width * 0.7,
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
            Text(
              '   Calender',
              style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              color: Constants.kGreyColor.withOpacity(0.7),
              height: 1,
              endIndent: 5,
              thickness: 1,
              indent: 5,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            // Text('selectedDay='+today.toString().split(" ")[0]),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.01),
              decoration: BoxDecoration(
                color: Constants.kMaintBlueColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TableCalendar(
                locale: 'en_US',
                rowHeight: height * 0.045,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                onDaySelected: _onDaySelected,
                selectedDayPredicate: (day) => isSameDay(day, today),
                calendarFormat: _calendarFormat,
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Container(
                  height: height * 0.045,
                  width: width * 0.12,
                  margin: EdgeInsets.only(left: width * 0.015),
                  decoration: BoxDecoration(
                    color: Constants.kGreyColor.withOpacity(0.19),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //  child: Icon(Icons.bathtub),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: Constants.kDarkGreyColor,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                    ),
                    Text(
                      '' + firstDay.toString().split(" ")[0],
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.067,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: Constants.TtitleBlackFont.copyWith(fontSize: 18),
                    ),
                    Text(
                      '' + today.toString().split(" ")[0],
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Price to Exchange',
                    style: Constants.TtitleBlackFont.copyWith(fontSize: 20,height: 1)),
                SizedBox(
                  width: width * 0.05,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      
                      '150\$',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Constants.kYellowColor,fontWeight: FontWeight.bold,fontSize: 18,),
                    ),
                  ),
                ),
              ],
            ),
            //  SizedBox(
            //   height:height <= 667 ? height * 0.055:height*0.05,
            // ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButtonWidget(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReplyDoneScreen()));},
                height: height * 0.065,
                width: width * 0.8,
                text: 'Exchange',
                cBorder: Colors.transparent,
                cButton: Constants.kBlueColor,
                cText: Constants.kWhiteColor,
                alignment: Alignment.center,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
