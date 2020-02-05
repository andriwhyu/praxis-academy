List insertionSort(List myList) {
  for(int i = 1; i < myList.length; i++) {
    int unsortedItem = myList[i];
    int j = i;

    while(j>0 && myList[j-1] > unsortedItem) {
      myList[j] = myList[j-1];    
      j--;
    }

    myList[j] = unsortedItem;
  }

  return myList;
}

bool checkList(List myList1, List myList2) {
  int i =0;
  int j = 0;

  while(i < myList1.length && j < myList2.length) {
    if(myList1[i] > myList2[j]) j++;
    else if(myList1[i] < myList2[j]) i++;
    else return true;
  }
  return false;
}

void main() {
  List myList1 = [10, 5, 7, 100];
  List myList2 = [100, 200, 4, 6];

  myList1 = insertionSort(myList1);
  myList2 = insertionSort(myList2);

  print(checkList(myList1, myList2));
}