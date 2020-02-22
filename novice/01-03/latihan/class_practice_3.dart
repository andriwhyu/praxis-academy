void main() {
  var employee = Employee();
  print(employee.describePerson());
  print(employee);
}

class Person {
  Person({this.name,this.age, this.height});

  final String name;
  final int age;
  final double height;

  String describePerson() => "My name is $name. I'm $age years old with $height cm height";

  @override
  String toString() => "Employee data: Name:${name}, Age: $height";
}

class Employee extends Person {
  Employee({this.employeeId, this.salary}) : super(name: "Andri", age: 18, height: 175);
  
  final String employeeId;
  final int salary;

  @override
  String toString() => "Person data ${super.toString()}";
}