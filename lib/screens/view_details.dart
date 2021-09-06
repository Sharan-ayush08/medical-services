import 'package:flutter/material.dart';

class ViewDetails extends StatelessWidget {
  final title;
  final details;

  const ViewDetails({
    Key? key,
    this.title,
    this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _drugs = Provider.of<Medicines>(context).items;

    final List<String> _points = details.keys.toList();
    final List<String> _details = details.values.toList();
    // final List values = widget.items!.keys.toList();
    print(_points);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue[900],
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: _points.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text(_points[index]),
              children: [
                ListTile(
                  title: Text(_details[index]),
                )
              ],
            );
          }),
      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ExpansionPanelList(
      //         expansionCallback: (int index, bool isExpanded) {
      //           setState(() {

      //             work[index].isExpanded = !work[index].isExpanded;
      //           });
      //         },
      //         children: work.map((ExpansionItem item) {
      //           return ExpansionPanel(
      //               headerBuilder: (BuildContext context, bool isExpanded) {
      //                 return Container(
      //                   child: Text(item.header),
      //                 );
      //               },
      //               isExpanded: item.isExpanded,
      //               body: Container(
      //                 child: Text(item.body),
      //               ));
      //         }).toList(),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
