import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/getposts.dart';
import 'package:flutter_application_4/services/networkhelper.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Posts>? posts;
  bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    print('Sagarmatha');
    getData();
    super.initState();
  }

  getData() async {
    posts = await NetworkHelper().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                posts![index].title ?? 'No Data',
              ),
            );
          },
        ),
      ),
      replacement: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
