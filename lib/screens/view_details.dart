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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Card(
                child: ListTile(
                  title: Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text('Orenica, Orenica Clickjet'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Health Directory",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  subtitle:
                      Text("Need to make a referral? Serach by specialty."),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 15.0,
                  )),
            ),
            Card(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _points.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ListTile(
                    onTap: () {},
                    leading: Text(
                      _points[index],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
