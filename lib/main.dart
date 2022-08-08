import 'dart:async';
import 'painter.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'homescreen.dart';
import 'package:flutter/rendering.dart';
import 'package:sortify/constants.dart';
import 'package:sortify/drawer.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        canvasColor: Color(0xFF137177),),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.index);
  int index;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    _streamController=StreamController<List<int>>();
    _stream=_streamController!.stream;
    _randomize();
    super.initState();
  }
  List<int> _numbers = [];
  int _sampleSize = 70;
  int duration=500;

  Stream<List<int>>? _stream;
  StreamController<List<int>>? _streamController;
Duration getDuration(){
  return Duration(microseconds: duration);
}

  _randomize() {
    _numbers=[];
    for (int i = 0; i < _sampleSize; i++) {
      _numbers.add(Random().nextInt(500));
    }
    _streamController!.add(_numbers);
  }

  _bubbleSort() async {
    for (int i = 0; i < _numbers.length; ++i) {
      for (int j = 0; j < _numbers.length - i - 1; ++j) {
        if (_numbers[j] > _numbers[j + 1]) {
          int temp = _numbers[j];
          _numbers[j] = _numbers[j + 1];
          _numbers[j + 1] = temp;
        }

        await Future.delayed(getDuration());

        _streamController!.add(_numbers);
      }
    }
  }
  int _partitionHoare<T extends Comparable<dynamic>>(
      List<T> list,
      int low,
      int high,
      ) {
    // 1
    final pivot = list[low];
    var left = low - 1;
    var right = high + 1;
    while (true) {
      // 2
      do {
        left += 1;
      } while (list[left].compareTo(pivot) < 0);
      // 3
      do {
        right -= 1;
      } while (list[right].compareTo(pivot) > 0);
      // 4
      if (left < right) {
        swap(list,left, right);
      } else {
        return right;
      }
    }
  }
  void swap(List list, int steps, int i) {
    int temp = list[steps];
    list[steps] = list[i];
    list[i] = temp;
  }
  void quicksortHoare<E extends Comparable<dynamic>>(
      List<E> list,
      int low,
      int high,
      ) async{
    if (low >= high) return;
    final leftHigh = _partitionHoare(list, low, high);
    quicksortHoare(list, low, leftHigh);
    quicksortHoare(list, leftHigh + 1, high);
    await Future.delayed(getDuration());

    _streamController!.add(_numbers);
  }


  void merge(List list, int leftIndex, int middleIndex, int rightIndex) {
    int leftSize = middleIndex - leftIndex + 1;
    int rightSize = rightIndex - middleIndex;

    List leftList = new List.filled(leftSize,0);
    List rightList = new List.filled(rightSize,0);

    for (int i = 0; i < leftSize; i++) leftList[i] = list[leftIndex + i];
    for (int j = 0; j < rightSize; j++) rightList[j] = list[middleIndex + j + 1];

    int i = 0, j = 0;
    int k = leftIndex;

    while (i < leftSize && j < rightSize) {
      if (leftList[i] <= rightList[j]) {
        list[k] = leftList[i];
        i++;
      } else {
        list[k] = rightList[j];
        j++;
      }
      k++;
    }

    while (i < leftSize) {
      list[k] = leftList[i];
      i++;
      k++;
    }

    while (j < rightSize) {
      list[k] = rightList[j];
      j++;
      k++;
    }
  }

  void mergeSort(List list, int leftIndex, int rightIndex)async {
    if (leftIndex < rightIndex) {
      int middleIndex = (rightIndex + leftIndex) ~/ 2;

      mergeSort(list, leftIndex, middleIndex);
      mergeSort(list, middleIndex + 1, rightIndex);

      merge(list, leftIndex, middleIndex, rightIndex);
    }
    await Future.delayed(getDuration());

    _streamController!.add(_numbers);
  }

  _insertionsort()async{
    if (_numbers == null || _numbers.length == 0) return;
    int n = _numbers.length;
    int i, step;
    for (step = 0; step < n; step++) {
      for ( i = 0; i < n - step - 1; i++) {
        if (_numbers[i] > _numbers[i + 1]) {
          int temp = _numbers[i];
          _numbers[i] = _numbers[i+1];
          _numbers[i+1] = temp;
        }
        await Future.delayed(getDuration());

        _streamController!.add(_numbers);
      }
    }
  }

  _selectionsort()async{
    if (_numbers == null || _numbers.length == 0) return;
    int n = _numbers.length;
    int i, steps;
    for (steps = 0; steps < n; steps++) {
      for (i = steps + 1; i < n; i++) {
        if(_numbers[steps] > _numbers[i]) {
          int temp = _numbers[steps];
          _numbers[steps] = _numbers[i];
          _numbers[i] = temp;
        }
        await Future.delayed(getDuration());

        _streamController!.add(_numbers);
      }
    }
  }

  _showDetails(ListView selected) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Color(0xFF0E4D64),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: selected,
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF137177),
        title: Center(child: Text('Sortify',style: ktitleStyle.copyWith(color: Colors.white,fontWeight: FontWeight.w900))),
      ),
      drawer:  NavigationDrawer(widget.index),
      bottomNavigationBar: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                 primary: Color(0xFF137177)),
              child: Text('Randomize',style: ktextStyle),
              onPressed: _randomize,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Color(0xFF137177)),
              child: Text('Sort',style: ktextStyle),
              onPressed:() {
                if(widget.index==0)
                  _bubbleSort();
                else if(widget.index==1)
                  quicksortHoare(_numbers, 0, _numbers.length - 1);
                else if(widget.index==2)
                  _selectionsort();
                else if(widget.index==3)
                  mergeSort(_numbers,0,_numbers.length-1);
                else
                  _insertionsort();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
             primary:Color(0xFF137177)),
              child: Text('Show Details',style: ktextStyle,),
              onPressed: (){

                if(widget.index==0)
                _showDetails(bubbleListView());
                else if(widget.index==1)
                  _showDetails(quickListView());
                else if(widget.index==2)
                _showDetails( selectionListView());
                else if(widget.index==3)
                _showDetails(mergeListView());
                else
                    _showDetails(insertionListView());
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: StreamBuilder(
              stream: _stream,
              builder:(context,snapshot){
                int counter = 0;
                return Row(
                  children: _numbers.map((int number) {
                    counter++;
                    return CustomPaint(
                      painter: BarPainter(
                        width: MediaQuery.of(context).size.width/_sampleSize,
                        value: number,
                        index: counter,
                      ),
                    );
                  }).toList(),
                );},
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/1.45,),
          Center(
            child: Container(
              child: Slider(value: duration.ceilToDouble(), onChanged: (newDuration){
                setState(() {
                  duration=newDuration.toInt();
                });
              },
                divisions: 6,
                label: duration.toString(),
                min: 500,
                max: 3500,
                activeColor: Color(0xFF137177),
                // inactiveColor: Colors.grey,
              ),
            ),
          ),
          Text('Speed',style: ktitleStyle,)
        ],
      ),
    );
  }
}

