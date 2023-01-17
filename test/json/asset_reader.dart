import 'dart:io';

String assetReader(String name) => File('test/json/$name').readAsStringSync();
