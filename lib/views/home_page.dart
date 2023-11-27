import 'package:flutter/material.dart';
import 'package:flutter_screens/models/practice/post.dart';
import 'package:flutter_screens/services/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Post> ? posts;
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //fetch the data from API
    getData();
  }

  getData()async{
    posts = await RemoteService().getPosts();
    if(posts != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts'),),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
            itemBuilder: (context , index){
              return Column(
                children: [
                  Text(
                    posts![index].title,
                    style: TextStyle(
                    fontSize: 24,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(
                    posts![index].body ?? " ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              );
            }
        ),
        replacement: Center(
          child: CircularProgressIndicator(
          ),
        ),
      ),
    );
  }
}
