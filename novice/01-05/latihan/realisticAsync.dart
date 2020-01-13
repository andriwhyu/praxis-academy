import 'dart:async';

class Employee {
  int id;
  String firtsName;
  String lastName;

  Employee(this.id, this.firtsName, this.lastName);
}

void main() async {
  print("waiting for employee data");
  var x = await getEmployee(33);
  print("Got back ${x.firtsName} ${x.lastName} with id# ${x.id}");
  var y =await getData();
  print("Run me first ${y}");
}

Future<int> getData() async {
  return 1;
}

Future<Employee> getEmployee(int id) async {
  await Future<Employee>.delayed(const Duration(seconds: 2));

  var e =Employee(id, "John", "Coder");
  return e;
}