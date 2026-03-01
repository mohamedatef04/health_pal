import 'dart:io';
import 'dart:convert';

void main() {
  var images = ['onboarding_1.svg', 'onboarding_2.svg', 'onboarding_3.svg'];
  for (var img in images) {
    var file = File('assets/images/$img');
    if (file.existsSync()) {
      var content = file.readAsStringSync();
      var match = RegExp(r'data:image/png;base64,([a-zA-Z0-9+/=]+)').firstMatch(content);
      if (match != null) {
        var base64Data = match.group(1)!;
        var bytes = base64Decode(base64Data);
        var outFile = File('assets/images/${img.replaceAll('.svg', '.png')}');
        outFile.writeAsBytesSync(bytes);
        print('Extracted ${outFile.path}');
      }
    }
  }
}
