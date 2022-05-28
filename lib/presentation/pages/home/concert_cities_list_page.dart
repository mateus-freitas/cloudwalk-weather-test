import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/application/concert_cities/concert_cities_list_bloc.dart';
import 'package:weather_test/application/weather_forecast/weather_forecast_bloc.dart';
import 'package:weather_test/core/injection/injection.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/weather/weather.dart';
import 'package:weather_test/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:weather_test/presentation/core/components/states/error_state_view.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';
import 'package:weather_test/presentation/core/responsive/responsive_layout.dart';
import 'package:weather_test/presentation/core/router/router.dart';
import 'package:weather_test/presentation/core/theme/app_colors.dart';
import 'package:weather_test/presentation/pages/weather_forecast/weather_forecast_page.dart';

class ConcertCitiesListPage extends StatelessWidget {
  const ConcertCitiesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConcertCitiesListBloc>(
      create: (context) => getIt<ConcertCitiesListBloc>()
        ..add(const ConcertCitiesListEvent.loadConcertCities()),
      child: AppScaffold(
          title: localize(context).appTitle,
          titleStyle: const TextStyle(fontWeight: FontWeight.w900),
          body: BlocConsumer<ConcertCitiesListBloc, ConcertCitiesListState>(
              builder: (context, states) {
                return states.map<Widget>(
                    loading: (_) => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    failed: (_) => ErrorStateView(
                          errorMessage: localize(context).generalErrorMessage,
                          onTryAgain: () =>
                              BlocProvider.of<ConcertCitiesListBloc>(context)
                                  .add(const ConcertCitiesListEvent
                                      .loadConcertCities()),
                        ),
                    loaded: (loaded) {
                      if (loaded.cities.isEmpty) {
                        return Center(
                          child: Text(
                            localize(context).emptyListMessage,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      return _LoadedCities(
                        citiesWithWeather: loaded.cities,
                        onItemPressed: (item) {
                          Navigator.of(context).push(getPlatformPageRoute(
                              builder: (context) => BlocProvider(
                                    create:
                                        (context) =>
                                            getIt<WeatherForecastBloc>(
                                                param1: item.city,
                                                param2: item.weather!.getOrElse(
                                                    () => throw Exception()))
                                              ..add(const WeatherForecastEvent
                                                  .loadForecast()),
                                    child: const WeatherForecastPage(),
                                  ),
                              fullscreenDialog: true));
                        },
                      );
                    });
              },
              listener: (context, state) {})),
    );
  }
}

class _LoadedCities extends StatelessWidget {
  final List<CityAndWeather> citiesWithWeather;
  final void Function(CityAndWeather) onItemPressed;

  const _LoadedCities(
      {Key? key, required this.citiesWithWeather, required this.onItemPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      large: GridView.builder(
          padding: const EdgeInsets.all(Margin.xs),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 80,
              crossAxisSpacing: Margin.xxs,
              mainAxisSpacing: Margin.xxs),
          itemBuilder: (context, index) {
            return _CityCard(
              item: citiesWithWeather[index],
              onTap: () {
                onItemPressed(citiesWithWeather[index]);
              },
            );
          },
          itemCount: citiesWithWeather.length),
      small: ListView.separated(
        padding: const EdgeInsets.all(Margin.xs),
        itemBuilder: (context, index) {
          return _CityCard(
            item: citiesWithWeather[index],
            onTap: () {
              onItemPressed(citiesWithWeather[index]);
            },
          );
        },
        itemCount: citiesWithWeather.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: Margin.xxs,
        ),
      ),
    );
  }
}

class _CityCard extends StatelessWidget {
  final CityAndWeather item;
  final VoidCallback onTap;

  const _CityCard({Key? key, required this.item, required this.onTap})
      : super(key: key);

  bool get _isLoading => item.weather == null;
  bool get _loadedWeather => item.weather != null && item.weather!.isRight();

  @override
  Widget build(BuildContext context) {
    final city = item.city;
    final weather = item.weather;
    final borderRadius = BorderRadius.circular(12);
    return InkWell(
      borderRadius: borderRadius,
      onTap: _loadedWeather ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.neutral20, borderRadius: borderRadius),
        padding: const EdgeInsets.all(Margin.xs),
        child: Row(children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(city.name)],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _isLoading
                  ? const SizedBox(
                      width: 40,
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : weather!.fold(
                      (l) => IconButton(
                          onPressed: () {
                            // TODO: implement individual loading
                          },
                          icon: const Icon(Icons.refresh)),
                      (r) => Column(
                            children: [
                              Text(
                                  '${r.temperature.celsius.toStringAsFixed(0)}º C')
                            ],
                          ))
            ],
          ))
        ]),
      ),
    );
  }
}
