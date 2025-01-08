import 'dart:io';

void main() {
  var currentdir = Directory('.');
  currentdir
      .list(recursive: true, followLinks: false)
      .listen((FileSystemEntity entity) {
    print(entity.path);
  });
}
