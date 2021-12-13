import "package:flutter/material.dart";

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/54496134?v=4"),
          ),
          Positioned(
              bottom: 4,
              right: 7,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 12,
                child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      title: Text(
        "My Status",
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text("Tap to add status update"),
    );
  }
}
