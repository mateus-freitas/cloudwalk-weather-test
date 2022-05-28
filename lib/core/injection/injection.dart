import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/injection/injection.config.dart';
import 'package:weather_test/infrastructure/core/constants.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(Env environment) =>
    $initGetIt(getIt, environment: environment.name);
