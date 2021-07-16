import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class StorageManager {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFileLanguage async {
    final path = await _localPath;
    return File('$path/language.txt');
  }

  Future<File> get _localFileAvatar async {
    final path = await _localPath;
    return File('$path/avatar.txt');
  }

  Future<File> get _localFileName async {
    final path = await _localPath;
    return File('$path/name.txt');
  }

  Future<String> read(String parameter) async {
    try {
      final file;
      switch (parameter) {
        case 'language':
          file = await _localFileLanguage;
          break;
        case 'avatar':
          file = await _localFileAvatar;
          break;
        case 'name':
          file = await _localFileName;
          break;
        default:
          file = null;
      }

      // Read the file
      final contents = await file.readAsString();

      // return int.parse(contents);
      return contents.toString();
    } catch (e) {
      // If encountering an error, return 0
      return '';
    }
  }

  Future<File> write(String parameter, String value) async {
    final file;
    switch (parameter) {
      case 'language':
        file = await _localFileLanguage;
        break;
      case 'avatar':
        file = await _localFileAvatar;
        break;
      case 'name':
        file = await _localFileName;
        break;
      default:
        file = null;
    }

    // Write the file
    return file.writeAsString('$value');
  }
}
