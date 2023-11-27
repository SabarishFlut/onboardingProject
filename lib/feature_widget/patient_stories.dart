import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PatientStoryWidget extends StatefulWidget {
  const PatientStoryWidget({Key? key}) : super(key: key);

  @override
  State<PatientStoryWidget> createState() => _PatientStoryWidgetState();
}

class _PatientStoryWidgetState extends State<PatientStoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF0F1F2),
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color(0xffF0F1F2),
        leading: IconButton(
          onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Padding(
          padding:  EdgeInsets.only(left: 54.0,right: 00),
          child: Text("Patient Stories",style: TextStyle(fontSize: 18,color: Colors.black),),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  color: Colors.green,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Text("Anne Stansberry",style: TextStyle(fontSize: 12,),),
                      SizedBox(height: 4,),
                      Text("Age: 72  | Los Angeles, California",style: TextStyle(color: Colors.grey,fontSize: 8),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 0.0,left: 80.0),
                      child: Icon(Icons.play_arrow_outlined),
                    ),
                    Text("10min"),
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 16,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 16,))
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
              borderRadius: BorderRadius.circular(10.0)
            ),
            height: 300,
            width: 350,
            child: VedioPlayer(),
          )
        ],
      ),
    );
  }
}

class VedioPlayer extends StatefulWidget {
  const VedioPlayer({Key? key}) : super(key: key);

  @override
  State<VedioPlayer> createState() => _VedioPlayerState();
}

class _VedioPlayerState extends State<VedioPlayer> {

  late VideoPlayerController _controller;

  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://www.google.com/search?q=sample+video+url&tbm=vid&sa=X&ved=2ahUKEwijlfWTo9b_AhW7zDgGHfx_CYYQ0pQJegQIFBAB&biw=1280&bih=601&dpr=1.5#fpstate=ive&vld=cid:7e29baab,vid:EngW7tLk6R8');
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true, // Set it to false if you want to control playback manually.
      looping: true, // Set it to true if you want the video to loop.
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
    );
  }

}
