// Binary search

int index_equal_value(List myList, int st, int end) {
  if(st > end) return -1;

  var mid = (st+end) ~/  2;
  if(myList[mid] > mid) return index_equal_value(myList, st, mid-1);
  else if(myList[mid] < mid) return index_equal_value(myList, mid+1, end);
  else return mid;
}

void main() {
  var myList = [0, 1, 3, 4, 5];

  print(index_equal_value(myList, 0, myList.length-1));
  // for(int i=0; i < myList.length; i++) {
  //   if(i == myList[i]) print(i);
  //   else print(-1);
  // }
  // int a = 1;
  // int b = 2;
  // print(a~/b);  


}
