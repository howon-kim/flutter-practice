import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();

}

class _PostState extends State<Post> {
  List<String> items = [];
  TextEditingController textController = TextEditingController();

  void addItemToList() {
    setState(() {
      if (textController.text.isNotEmpty) {
        items.insert(items.length, textController.text);
        textController.clear();
      };
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
            controller: textController,
            decoration: const InputDecoration(
              hintText: "Add Todo Item",
              labelText: "Todo Item",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
              )
            )
          ), 
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:
                ElevatedButton(
                  onPressed: () {
                    addItemToList();
                  },
                  child: const Text("Add to the list")
                )
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    child: Center(
                      child: Text('${index}: ${items[index]}',
                        style: TextStyle(fontSize: 12)
                      )
                    )
                  );
                }
              )
            )
          ]
        )
      )
    );
  }
}