import 'package:flutter/material.dart';
import './view_details.dart';

class ListViewPage extends StatelessWidget {
  final title;
  final Map? items;
  const ListViewPage({Key? key, this.title, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _itemNames = items!.keys.toList();
    print(_itemNames);

    print(_itemNames);
    var _isDetail = false;
    if (items!.entries.first.value.entries.first.value is String) {
      _isDetail = true;
    }

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue[900],
        title: Text(title),
      ),
      body: _itemNames.isEmpty
          ? Center(
              child: Text("No Information Available"),
            )
          : ListView.builder(
              itemCount: _itemNames.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  child:
                      //  ExpansionTile(
                      //   //_itemNames[index] //items![_itemNames[index]]
                      //   title:
                      ListTile(
                    onTap: () {
                      print(_isDetail);
                      if (_isDetail) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ViewDetails(
                              title: _itemNames[index],
                              details: items![_itemNames[index]],
                            ),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ListViewPage(
                                  title: _itemNames[index],
                                  items: items![_itemNames[index]],
                                )));
                      }
                    },
                    title: Text(
                      _itemNames[index],
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  //   children: [
                  //     Text(
                  //       _itemNames[index],
                  //       style: TextStyle(fontSize: 20),
                  //     ),
                  //     Container(
                  //       child: ViewDetails(
                  //         title: _itemNames[index],
                  //         details: _itemNames[index],
                  //       ),
                  //     )
                  //   ],
                  // ),
                );
              },
            ),
    );
  }
}
