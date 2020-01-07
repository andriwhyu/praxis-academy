import '../lib/fancy_project.dart' as fancy_project;
import '../lib/helloWorld.dart' as helloWorld;
import '../lib/variables.dart' as variables;
import '../lib/import.dart' as imports;
import '../lib/functions.dart' as functions;
import '../lib/controlFlowStatements.dart' as controlFlow;

void main(List<String> arguments) {
  print('Hello world: ${fancy_project.calculate()}!');

  helloWorld.main();
  variables.main();
  imports.main();
  functions.main();
  controlFlow.main();
}
