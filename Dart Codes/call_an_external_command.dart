
import 'dart:io';

void main() {
Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
  });
}