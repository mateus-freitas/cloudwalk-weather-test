import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/injection/injection.config.dart';
import 'package:weather_test/infrastructure/core/constants.dart';

final sl = GetIt.instance;

@injectableInit
void configureInjection(Env environment) =>
    $initGetIt(sl, environment: environment.name);
