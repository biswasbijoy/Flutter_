import 'package:simple_chat_ui/model/user_model.dart';

class Message {
  final Users sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}
