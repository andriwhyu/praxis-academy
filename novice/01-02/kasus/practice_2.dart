// Insertion Sort

void main() {
  var myList = [1, 10, 4, 6];
  
  for (int i=1; i < myList.length; i++) {
    int unsortedElemt = myList[i];
    int j = i;

    while(j>0 && myList[j-1] > unsortedElemt) {
      myList[j] = myList[j-1];
      j--;
    }
    
    myList[j] = unsortedElemt;
  }

  print(myList);
}