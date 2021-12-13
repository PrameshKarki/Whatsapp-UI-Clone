import "package:flutter/foundation.dart";

class ChatList {
  String? id, avatarURL, name, message, time;
  bool? isLastMessageDelivered;

  ChatList(
      {@required this.id,
      @required this.avatarURL,
      @required this.name,
      @required this.message,
      @required this.time,
      @required this.isLastMessageDelivered});
}
