// Search index that have maximum value

int maxIndex(List myList, int st, int end) {
  int max = st;

  for(int i = st+1; i<=end; i++) {
    if(myList[i] > myList[max]) {
      max = i;
    }
  }
  return max;
}

void main() {
  List myList = [2, 6, 100, 10, 6, 20];

  print(maxIndex(myList, 0, 5));
}