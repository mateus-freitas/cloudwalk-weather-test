import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/application/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';
import 'package:weather_test/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:weather_test/presentation/core/components/states/error_state_view.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';
import 'package:weather_test/presentation/core/theme/app_colors.dart';
import 'package:weather_test/presentation/pages/weather_forecast/widgets/max_min_temp_view.dart';

class WeatherForecastPage extends StatelessWidget {
  const WeatherForecastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherForecastBloc, WeatherForecastState>(
      builder: (context, state) {
        final weather = state.weather;
        return AppScaffold(
            title: state.city.name,
            body: ListView(
              padding: const EdgeInsets.all(Margin.xs),
              children: [
                Text(
                  weather.temperature.displayableCelsius,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                MaxMinTempView(max: weather.tempMax, min: weather.tempMin),
                const SizedBox(height: Margin.xs),
                state.map(
                    initial: (_) => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    loadedForecast: (loaded) => SizedBox(
                        height: 150,
                        child: _ForecastWeather(forecast: loaded.forecast)),
                    failedForecast: (failure) => ErrorStateView(
                        errorMessage: localize(context).generalErrorMessage,
                        onTryAgain: () =>
                            BlocProvider.of<WeatherForecastBloc>(context).add(
                                const WeatherForecastEvent.loadForecast())))
              ],
            ));
      },
    );
  }
}

class _ForecastWeather extends StatelessWidget {
  final List<DateAndWeather> forecast;

  const _ForecastWeather({Key? key, required this.forecast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: forecast.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 190,
            mainAxisSpacing: Margin.nano,
            crossAxisSpacing: Margin.nano),
        itemBuilder: (context, index) {
          final date = forecast[index].dateText.split(' ').first;
          final hour = forecast[index].dateText.split(' ')[1];
          final weather = forecast[index].weather;
          return Container(
            padding: const EdgeInsets.all(Margin.xxs),
            decoration: BoxDecoration(
                color: AppColors.neutral10,
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Text(
                date,
                style: const TextStyle(color: AppColors.neutral80),
              ),
              Text(
                '${hour.split(':').first}h',
                style: const TextStyle(
                    color: AppColors.neutral80, fontWeight: FontWeight.bold),
              ),
              Text(
                weather.temperature.displayableCelsius,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: Margin.nano),
              MaxMinTempView(max: weather.tempMax, min: weather.tempMin),
            ]),
          );
        });
  }
}
