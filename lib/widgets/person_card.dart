import 'package:Task/models/person.dart';
import 'package:Task/sizeConfig.dart';
import 'package:Task/widgets/badge.dart';
import 'package:Task/widgets/create_chat_or_calendar.dart';
import 'package:Task/widgets/doctor_rating.dart';
import 'package:Task/widgets/person_Info.dart';
import 'package:Task/widgets/person_image.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final Person person;

  const PersonCard({this.person});
  @override
  Widget build(BuildContext context) {
    final theVideoColor = person.isVideo != null && person.isVideo
        ? Theme.of(context).primaryColor
        : Colors.grey;
    return Stack(children: [
      Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PersonImage(
                  image: person.image,
                  isOnline: person.isOnilne,
                ),
                Expanded(
                  child: PersonInfo(
                    name: person.name,
                    distance: person.distance,
                    category: person.category,
                  ),
                ),
                if (person.isDoctor) DoctorRating(rate: person.rate),
              ],
            ),
            SizedBox(height: SizeConfig.safeBlockVertical * 2),
            Row(
              children: [
                if (person.isDoctor)
                  Row(
                    children: [
                      Icon(
                        person.isVideo ? Icons.videocam : Icons.videocam_off,
                        color: theVideoColor,
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal),
                      Text(
                        "Video Visit",
                        style: TextStyle(color: theVideoColor),
                      )
                    ],
                  ),
                Spacer(),
                CreateChatOrCalendar(isChat: false),
                SizedBox(width: SizeConfig.safeBlockHorizontal * 3),
                CreateChatOrCalendar(isChat: true)
              ],
              crossAxisAlignment: CrossAxisAlignment.end,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal * 3,
          vertical: SizeConfig.safeBlockVertical * 2,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal * 3,
          vertical: SizeConfig.safeBlockVertical,
        ),
      ),
    if(person.isDoctor)  Positioned(
        child: CustomPaint(
          size: Size(
            SizeConfig.safeAverage * 2.5,
            SizeConfig.safeAverage * 3.25,
          ),
          painter: Badge(),
        ),
        top: SizeConfig.safeBlockVertical,
        left: SizeConfig.safeBlockHorizontal * 3 + 10,
      ),
    ]);
  }
}
