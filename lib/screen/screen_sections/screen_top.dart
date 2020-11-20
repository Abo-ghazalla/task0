import 'package:Task/sizeConfig.dart';
import 'package:Task/screen/screen_sections/screen_bottom.dart';
import 'package:Task/widgets/search_box.dart';
import 'package:flutter/material.dart';

class ScreenTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "All Acounts",
                style: Theme.of(context).textTheme.headline1,
              ),
              Spacer(),
              GestureDetector(
                child: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
                onTap: () => showModalBottomSheet(
                    context: context, builder: (_) => ScreenBottom()),
              ),
              SizedBox(width: SizeConfig.safeBlockHorizontal * 3),
              GestureDetector(
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                onTap: () {},
              )
            ],
          ),
          SearchBox()
        ],
      ),
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.fromLTRB(
        SizeConfig.safeBlockHorizontal * 4,
        SizeConfig.topPadding + SizeConfig.safeBlockVertical * 4,
        SizeConfig.safeBlockHorizontal * 4,
        0,
      ),
    );
  }
}
