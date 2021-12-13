import "package:flutter/material.dart";

import "../models/Chats.dart" as ChatData;

class Chats extends StatelessWidget {
  List chatList = ChatData.Chats.charts;

  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              chatList[index].avatarURL as String,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                chatList[index].name as String,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                chatList[index].time as String,
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          ),
          subtitle: Row(
            children: [
              chatList[index].isLastMessageDelivered as bool
                  ? Icon(
                      Icons.done_all,
                      size: 20,
                    )
                  : Icon(
                      Icons.done,
                      size: 20,
                    ),
              SizedBox(
                width: 4,
              ),
              Text(
                chatList[index].message as String,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        );
      },
    ));
  }
}
