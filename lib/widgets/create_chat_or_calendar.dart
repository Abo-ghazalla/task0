import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class CreateChatOrCalendar extends StatelessWidget {
  final bool isChat;

  const CreateChatOrCalendar({
    Key key,
    @required this.isChat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theColor =
        isChat ? Theme.of(context).primaryColor : Color(0xFF909CB4);
    return Container(
      child: Icon(
        isChat ? Icons.chat_bubble_outline : Icons.assignment,
        color: theColor,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF909CB4).withOpacity(.1),
        border: Border.all(color: theColor),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(SizeConfig.safeAverage * 2),
    );
  }
}
