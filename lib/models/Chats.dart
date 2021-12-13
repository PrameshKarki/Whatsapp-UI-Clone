import './ChatList.dart';

class Chats {
  static List<ChatList> get charts {
    return [
      ChatList(
          id: DateTime.now().toString(),
          avatarURL: "https://avatars.githubusercontent.com/u/54496134?v=4",
          name: "Pramesh Karki",
          message: "Let's make new flutter project!",
          time: "3:30",
          isLastMessageDelivered: true),
      ChatList(
          id: DateTime.now().toString(),
          avatarURL: "https://avatars.githubusercontent.com/u/54772300?v=4",
          name: "Laxman Pokhrel",
          message: "Hello brother!",
          time: "2:30",
          isLastMessageDelivered: false),
      ChatList(
          id: DateTime.now().toString(),
          avatarURL: "https://avatars.githubusercontent.com/u/54773057?v=4",
          name: "Jeewan Ghimire",
          message: "Are you fine?",
          time: "1:30",
          isLastMessageDelivered: true),
    ];
  }
}
