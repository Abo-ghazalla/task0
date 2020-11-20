import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class PersonImage extends StatelessWidget {
  final String image;
  final bool isOnline;

  const PersonImage({Key key, this.image, this.isOnline}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: SizeConfig.safeAverage * 7,
        ),
        Positioned(
          child: Container(
            height: SizeConfig.safeAverage * 2.5,
            width: SizeConfig.safeAverage * 2.5,
            decoration: BoxDecoration(
              color: isOnline?Color(0xFF00E676):Colors.grey[600],
              shape: BoxShape.circle,
            ),
          ),
          bottom: SizeConfig.blockSizeVertical * .25,
          right: SizeConfig.safeBlockHorizontal * 3,
        )
      ],
    );
  }
}
