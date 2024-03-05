import 'package:flutter/material.dart';

class MyScroll extends StatefulWidget {
  const MyScroll({super.key});

  @override
  State<MyScroll> createState() => _MyScrollState();
}

class _MyScrollState extends State<MyScroll> {
  final PageStorageBucket pageBucket = PageStorageBucket();
// https://www.geeksforgeeks.org/flutter-preserve-scroll-position-of-listview-using-page-storage/
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          showDialog(
            context: context,
            builder: (context) {
              return Center(
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.teal.shade100,
                  child: Scaffold(
                    body: PageStorage(
                      // using page storage widget
                      // bucket property used as
                      // it is mandatory
                      bucket: pageBucket,
                      child: ListView.builder(
                        key: const PageStorageKey<String>('pageOne'), //  giving key to ListView Builder
                        itemCount: 100,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text(
                              'List Item ${index + 1}',
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Text('#######'),
      ),
    );
  }
}
