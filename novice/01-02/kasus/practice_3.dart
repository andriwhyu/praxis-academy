// Backward Insertion Sort

void main() {
  List myList = [10, 9, 5, 4];

  for(int i= myList.length-2; i >= 0; i--) {
    int unsortedItem = myList[i];
    int j = i+1;

    while(j < myList.length && unsortedItem > myList[j]) {
      myList[j-1] = myList[j];
      j++;
    }
    myList[j-1] = unsortedItem;
  }

  print(myList);
}