import "./CallList.dart";

class Calls {
  static List<CallList> get calls {
    return [
      CallList(
          id: DateTime.now().toString(),
          avatarURL: "https://avatars.githubusercontent.com/u/54496134?v=4",
          name: "Pramesh Karki",
          time: "24 minutes ago",
          count: 2,
          isIncoming: true,
          isVideoCall: true),
      CallList(
          id: DateTime.now().toString(),
          avatarURL: "https://avatars.githubusercontent.com/u/54773057?v=4",
          name: "Jeewan Ghimire",
          time: "Today, 07:06",
          count: 0,
          isIncoming: false,
          isVideoCall: false),
    ];
  }
}
