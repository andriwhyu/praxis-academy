# Penerapan Dart Pada Kasus Pemrograman
## Kasus 1 - Binary Search
Buatlah kode menggunakan dart untuk mencari element (angka) dalam suatu list yang memiliki nilai yang sama dengan nilai index dari element tersebut. _Note: Jika terdapat element yang bernilai sama dengan index-nya maka tampilkan index dari element tersebut. Jika tidak ditemukan tampilkan, nilai -1_

Berikut adalah kode penerapan kasus dengan pendekatan **Binary Search** :

    int index_equal_value(List myList, int st, int end) {
        if(st > end) return -1;
        var mid = (st+end) ~/  2;
        if(myList[mid] > mid) {
            return index_equal_value(myList, st, mid-1);       
        }
        else if(myList[mid] < mid) {
            return index_equal_value(myList, mid+1, end);
        } 
        else{
            return mid;
        }
    }

    void main() {
        var myList = [0, 1, 3, 4, 5];
        print(index_equal_value(myList, 0, myList.length-1));
    }