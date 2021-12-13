import "package:flutter/material.dart";

import "../models/Calls.dart" as callsData;

class Calls extends StatelessWidget {
  var callsList = callsData.Calls.calls;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 5),
      itemBuilder: (ctx, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(callsList[index].avatarURL as String),
          ),
          title: Text(
            callsList[index].name as String,
            style: Theme.of(context).textTheme.headline1,
          ),
          subtitle: Row(
            children: [
              callsList[index].isIncoming as bool
                  ? Icon(
                      Icons.call_received_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    )
                  : Icon(
                      Icons.call_made_sharp,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    ),
              SizedBox(
                width: 4,
              ),
              Text(
                callsList[index].time as String,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          trailing: callsList[index].isVideoCall as bool
              ? Icon(
                  Icons.videocam,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                )
              : Icon(
                  Icons.call,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
        );
      },
      itemCount: callsList.length,
    );
  }
}
