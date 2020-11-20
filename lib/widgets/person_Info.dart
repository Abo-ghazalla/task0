import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  final String name;
  final String category;
  final double distance;

  const PersonInfo({
    Key key,
    this.name,
    this.category,
    this.distance,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline2,
          ),
          // if category equals null then it's not a doctor
          if (category != null)
            Text(
              category,
              strutStyle: StrutStyle(fontSize: 18),
              style: Theme.of(context).textTheme.caption,
            ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFF909CB4),
              ),
              Text(
                "${distance}km away",
                strutStyle: StrutStyle(fontSize: 18),
                style: TextStyle(
                  color: Color(0xFF909CB4),
                  fontSize: 12
                  // height: 1.2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
