import 'package:flutter/material.dart';
import 'package:sortify/constants.dart';
import 'package:sortify/main.dart';
import 'drawer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
late AnimationController controller;

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF137177),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sorting',style: ktextStyle.copyWith(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.w700),),
              Text('Visualizer',style: ktextStyle.copyWith(fontSize: 30,fontWeight: FontWeight.w700),),
              Lottie.asset('assets/stereo.json'),
            Center(
              child: CircleAvatar(
                backgroundColor: Color(0xFF0E4D64),
                radius: 40,
                child: GestureDetector(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(0)));
                  },
                  child: Icon(
                     Icons.play_arrow,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),),
              SizedBox(height:10),
              Center(child: Text('Tap to start',style: ktextStyle,)),
              SizedBox(height:100),
              Center(child: Text('Visualize different sorting algorithms',style: ktextStyle.copyWith(color: Colors.grey),)),
              SizedBox(height:20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xFF0E4D64)),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText('Bubble Sort',textStyle: ktextStyle),
                    TyperAnimatedText('Quick Sort',textStyle: ktextStyle),
                    TyperAnimatedText('Selection Sort',textStyle: ktextStyle),
                    TyperAnimatedText('Merge Sort',textStyle: ktextStyle),
                    TyperAnimatedText('Insertion Sort',textStyle: ktextStyle),
                  ],
                    repeatForever: true,
                    // totalRepeatCount: 4,
                    pause: Duration(microseconds: 100000),
                  ),
                ),
              )
            ],),
          ),
        ),
      );
  }
}
