printNumber (int number) {
  print("This is number: ${number}");
}

void main() {
  var num = 42;
  printNumber(num);
  bool isDefence = false;
  var hex = 0xDE;

  String str = 'abc ' 'def';
  print(str);  

if(!isDefence) {
  print("aku");
}

var list = [1, 2, 3];

// ...? untuk memastikan agar tidak error jika list tersebut berisi null
var list2 = [0, ...?list, 4];

var halogens = {'chlorine', 'bromine', 'iodine', 'astatine'};
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);

print(elements.elementAt(1));

}
