import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text("Hi, Moab",
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Icon clicked!");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 170,
              top: 10,
              right: 5,
              bottom: 10
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("This is your message.", style: TextStyle(
                  fontSize: 15, color: Colors.white
                ),),
                Image.network("https://images.unsplash.com/photo-1625908773164-648287a5e5fb?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 170,
                top: 10,
                right: 5,
                bottom: 10
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("This is your message.", style: TextStyle(
                    fontSize: 15, color: Colors.white
                ),),
                Image.network("https://images.unsplash.com/photo-1625908773164-648287a5e5fb?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 170,
                top: 10,
                right: 5,
                bottom: 10
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("This is your message.", style: TextStyle(
                    fontSize: 15, color: Colors.white
                ),),
                Image.network("https://images.unsplash.com/photo-1625908773164-648287a5e5fb?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 170,
                top: 10,
                right: 5,
                bottom: 10
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("This is your message.", style: TextStyle(
                    fontSize: 15, color: Colors.white
                ),),
                Image.network("https://images.unsplash.com/photo-1625908773164-648287a5e5fb?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                )
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),
            child: Row(

              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
