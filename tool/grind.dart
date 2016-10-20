import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

main(List<String> args) {
  grind(args);
}

@Task('Analyze dart sources')
void analyze() {
  List<String> args = ['--strong', '--format=machine', 'lib/'];

  String analyzerStdOutResult = "";

  try {
    analyzerStdOutResult = run(
        path.join('C:\\Program Files\\Dart\\dart-sdk', 'bin', 'dartanalyzer.bat'),
        arguments: args
    );

    print(analyzerStdOutResult);
    print("SUCCESS");
  } on ProcessException catch (e) {
    print("ERROR");
    rethrow;
  }
}