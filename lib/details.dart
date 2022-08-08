import 'package:flutter/material.dart';
import 'constants.dart';
ListView bubbleListView() {
  return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Text('\nBubble Sort',style: ktitleStyle.copyWith(fontWeight: FontWeight.w900,color: Color(
            0xFFFFFFFF))),
        Text('\nBubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements of the array if they are in wrong order.',style: ktextStyle),
        Text('\nEg., arr[2]=12 and arr[3]=5',style: ktextStyle),
        Text('Now, arr[2]>arr[3], so swap: arr[2]=5 and arr[3]=12',style: ktextStyle),
        Text('\nTime complexity:\t\t\t\t\t\t Space complexity:',style: ktextStyle),
        Text('best case: O(n)\t\t\t\t\t\t\t\t worst case: O(1)',style: ktextStyle),
        Text('worst case: O(n^2)',style: ktextStyle),
        Text('average case: O(n^2)',style: ktextStyle),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF052531)),

          child: Text('#include <bits/stdc++.h>\n\n using namespace std;\n\n void bubbleSort(int arr[], int n)\n {\n  int i, j;\n  for (i = 0; i < n - 1; i++){ \n for (j = 0; j < n - i - 1; j++)\n if (arr[j] > arr[j + 1])\n   swap(arr[j], arr[j + 1]);\n   }\n\n   void printArray(int arr[], int size)\n  {\n  int i;\n   for (i = 0; i < size; i++)\n  cout << arr[i] << " ";\n    cout << endl;\n     }\n\n    int main()\n {\n   int arr[] = { 5, 1, 4, 2, 8};\n   int N = sizeof(arr) / sizeof(arr[0]);\n  bubbleSort(arr, N);\n   cout << "Sorted array:";\n  printArray(arr, N);\n   return 0;\n  }',style: TextStyle(
              color: Colors.white,fontSize: 15
          ),),
        ),]
  );
}
ListView selectionListView() {
  return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Text('\Selection Sort',style: ktitleStyle.copyWith(fontWeight: FontWeight.w900,color: Color(
            0xFFFFFFFF))),
        Text('\nThe selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.',style: ktextStyle),
        Text('\nThe subarray which is already sorted. ',style: ktextStyle),
        Text('Remaining subarray which is unsorted.',style: ktextStyle),
        Text('\nTime complexity:\t\t\t\t\t\t Space complexity:',style: ktextStyle),
        Text('best case: O(n^2)\t\t\t\t\t\t\t\t worst case: O(1)',style: ktextStyle),
        Text('worst case: O(n^2)',style: ktextStyle),
        Text('average case: O(n^2)',style: ktextStyle),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF052531)),

          child: Text('#include <bits/stdc++.h>\n\n using namespace std; \n\n void swap(int *xp, int *yp)\n{\n int temp = *xp;\n  *xp = *yp;\n*yp = temp;\n } \n\nvoid selectionSort(int arr[], int n)\n {\nint i, j, min_idx;\n for (i = 0; i < n-1; i++)\n { min_idx = i;\n for (j = i+1; j < n; j++)\n if (arr[j] < arr[min_idx])\n min_idx = j; \nswap(&arr[min_idx], &arr[i]);\n }\n   }\n\n void printArray(int arr[], int size)\n {\n  int i;\n for (i=0; i < size; i++)\n cout << arr[i] << " ";\n cout << endl;\n }\n\nint main()\n {\n int arr[] = {64, 25, 12, 22, 11};\n int n = sizeof(arr)/sizeof(arr[0]);\n selectionSort(arr, n);\n cout << "Sorted array:";\n printArray(arr, n);\n return 0;\n }'
  ,style: TextStyle(
              color: Colors.white,fontSize: 15
          ),),
        ),]
  );
}
ListView insertionListView(){
  return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Text('\Insertion Sort',style: ktitleStyle.copyWith(fontWeight: FontWeight.w900,color: Color(
            0xFFFFFFFF))),
        Text('\nInsertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.',style: ktextStyle),
        Text('\nTime complexity:\t\t\t\t\t\t Space complexity:',style: ktextStyle),
        Text('best case: O(n)\t\t\t\t\t\t\t\t worst case: O(1)',style: ktextStyle),
        Text('worst case: O(n^2)',style: ktextStyle),
        Text('average case: O(n^2)',style: ktextStyle),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF052531)),

          child: Text('#include <bits/stdc++.h>\n\n using namespace std; \n\nvoid insertionSort(int arr[], int n)\n{\n  int i, key, j;\n  for (i = 1; i < n; i++)\n {\n key = arr[i];\nj = i - 1;\nwhile (j >= 0 && arr[j] > key)\n {\n arr[j + 1] = arr[j];\n j = j - 1;\n }\n arr[j + 1] = key;\n }\n}\n\n void printArray(int arr[], int size)\n {\n  int i;\n for (i=0; i < size; i++)\n cout << arr[i] << " ";\n cout << endl;\n }\n\nint main()\n {\n int arr[] = {64, 25, 12, 22, 11};\n int n = sizeof(arr)/sizeof(arr[0]);\n insertionSort(arr, n);\n cout << "Sorted array: ";\n printArray(arr, n);\n return 0;\n }'
            ,style: TextStyle(
                color: Colors.white,fontSize: 15
            ),),
        ),]
  );
}
ListView quickListView(){
  return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Text('\Quick Sort',style: ktitleStyle.copyWith(fontWeight: FontWeight.w900,color: Color(
            0xFFFFFFFF))),
        Text('\nLike Merge Sort, QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways. ',style: ktextStyle),
        Text('\nAlways pick first element as pivot.',style: ktextStyle),
        Text('\nAlways pick last element as pivot (implemented below)',style: ktextStyle),
        Text('\nPick a random element as pivot.',style: ktextStyle),
        Text('\nPick median as pivot.',style: ktextStyle),
        Text('\nThe key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.',style: ktextStyle),
        Text('\nTime complexity:\t\t\t\t\t\t Space complexity:',style: ktextStyle),
        Text('best case: O(nlog(n))\t\t\t\t\t\t\t\t worst case: O(log(n))',style: ktextStyle),
        Text('worst case: O(n^2)',style: ktextStyle),
        Text('average case: O(nlog(n))',style: ktextStyle),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF052531)),

          child: Text('#include <bits/stdc++.h>\n\n using namespace std; \n\nvoid swap(int* a, int* b)\n {\n int t = *a;\n *a = *b;\n  *b = t;\n}\n\n int partition (int arr[], int low, int high) {\n int pivot = arr[high];\n int i = (low - 1);\n for (int j = low; j <= high - 1; j++){\n  if (arr[j] < pivot) {\n  i++;\n  swap(&arr[i], &arr[j]); }\n  }\n swap(&arr[i + 1], &arr[high]);\n  return (i + 1);\n  }\n \n void quickSort(int arr[], int low, int high)\n {\n if (low < high) {\n int pi = partition(arr, low, high);\n quickSort(arr, low, pi - 1);\n quickSort(arr, pi + 1, high);\n } }\n\nvoid printArray(int arr[], int size) {\nint i;\nfor (i = 0; i < size; i++)\ncout << arr[i] << " ";\ncout << endl;\n }\n\nint main() {\n int arr[] = {10, 7, 8, 9, 1, 5};\n int n = sizeof(arr) / sizeof(arr[0]);\n quickSort(arr, 0, n - 1);\n cout << "Sorted array: ";\nprintArray(arr, n);\nreturn 0;\n }'
  ,style: TextStyle(
                color: Colors.white,fontSize: 15
            ),),
        ),]
  );
}
ListView mergeListView(){
  return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Text('\Merge Sort',style: ktitleStyle.copyWith(fontWeight: FontWeight.w900,color: Color(
            0xFFFFFFFF))),
        Text('\nLike QuickSort, Merge Sort is a Divide and Conquer algorithm. It divides the input array into two halves, calls itself for the two halves, and then it merges the two sorted halves. The merge() function is used for merging two halves. The merge(arr, l, m, r) is a key process that assumes that arr[l..m] and arr[m+1..r] are sorted and merges the two sorted sub-arrays into one.',style: ktextStyle),
        Text('\nTime complexity:\t\t\t\t\t\t Space complexity:',style: ktextStyle),
        Text('best case: O(nlog(n))\t\t\t\t\t\t\t\t worst case: O(n)',style: ktextStyle),
        Text('worst case: O(nlog(n))',style: ktextStyle),
        Text('average case: O(nlog(n))',style: ktextStyle),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF052531)),

          child: Text('#include <bits/stdc++.h>\n\n using namespace std; \n\nvoid merge(int array[], int const left, int const mid, int const right)\n {\n auto const subArrayOne = mid - left + 1;\n auto const subArrayTwo = right - mid;\n auto *leftArray = new int[subArrayOne],\n*rightArray = new int[subArrayTwo];\n\n for (auto i = 0; i < subArrayOne; i++)\n leftArray[i] = array[left + i];\n\n for (auto j = 0; j < subArrayTwo; j++)\n rightArray[j] = array[mid + 1 + j];\n auto indexOfSubArrayOne = 0,\n indexOfSubArrayTwo = 0;\n int indexOfMergedArray = left;\n\n while (indexOfSubArrayOne < subArrayOne && indexOfSubArrayTwo < subArrayTwo)\n\n {\n if (leftArray[indexOfSubArrayOne] <= rightArray[indexOfSubArrayTwo]) \n\n{\n array[indexOfMergedArray] = leftArray[indexOfSubArrayOne];\n indexOfSubArrayOne++;\n  }\n  \nelse {\n array[indexOfMergedArray] = rightArray[indexOfSubArrayTwo];\n indexOfSubArrayTwo++;\n }\n indexOfMergedArray++;\n }\n\nwhile (indexOfSubArrayOne < subArrayOne)\n\n {\n array[indexOfMergedArray] = leftArray[indexOfSubArrayOne];\n indexOfSubArrayOne++;\n indexOfMergedArray++;\n  }\n \n while (indexOfSubArrayTwo < subArrayTwo) \n{\n array[indexOfMergedArray] =  rightArray[indexOfSubArrayTwo];\n indexOfSubArrayTwo++;\n indexOfMergedArray++;\n }\n }\n\n void mergeSort(int array[], int const begin, int const end)\n {\n if (begin >= end)  return;\nauto mid = begin + (end - begin) / 2;\n mergeSort(array, begin, mid);\n mergeSort(array, mid + 1, end);\n merge(array, begin, mid, end);\n }\n \n void printArray(int A[], int size)\n {\n  for (auto i = 0; i < size; i++)\n cout << A[i] << " ";\n }\n \n int main()\n {\n int arr[] = { 12, 11, 13, 5, 6, 7 };\n auto arr_size = sizeof(arr) / sizeof(arr[0]);\n cout << "Given array is ";\n printArray(arr, arr_size);\n mergeSort(arr, 0, arr_size - 1);\n cout << "Sorted array is ";\n printArray(arr, arr_size);\n return 0;\n }'
            ,style: TextStyle(
                color: Colors.white,fontSize: 15
            ),),
        ),]
  );

}