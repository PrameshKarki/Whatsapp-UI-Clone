import "package:flutter/foundation.dart";

class CallList {
  String? id, avatarURL, name, time;
  int? count;
  bool? isIncoming, isVideoCall;

  CallList(
      {@required this.id,
      @required this.avatarURL,
      @required this.name,
      @required this.time,
      @required this.count,
      @required this.isIncoming,
      @required this.isVideoCall});
}
