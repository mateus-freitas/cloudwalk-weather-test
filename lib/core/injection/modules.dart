import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @injectable
  Connectivity get connectivity => Connectivity();

  @injectable
  HiveInterface get storage => Hive;
}
