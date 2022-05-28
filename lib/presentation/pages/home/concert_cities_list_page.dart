import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/application/concert_cities/concert_cities_list_bloc.dart';
import 'package:weather_test/core/injection/injection.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/weather/weather.dart';
import 'package:weather_test/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:weather_test/presentation/core/components/states/error_state_view.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';
import 'package:weather_test/presentation/core/responsive/responsive_layout.dart';

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
                      return _LoadedCities(citiesWithWeather: loaded.cities);
                    });
              },
              listener: (context, state) {})),
    );
  }
}

class _LoadedCities extends StatelessWidget {
  final List<CityAndWeather> citiesWithWeather;
  const _LoadedCities({Key? key, required this.citiesWithWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      large: Container(),
      small: ListView.separated(
        padding: const EdgeInsets.all(Margin.xs),
        itemBuilder: (context, index) {
          final city = citiesWithWeather[index].city;
          final weather = citiesWithWeather[index].weather;
          return Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(Margin.xs),
            child: Row(children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(city.name)],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  weather == null
                      ? SizedBox(
                          width: 40,
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : weather.fold(
                          (l) => IconButton(
                              onPressed: () {}, icon: Icon(Icons.refresh)),
                          (r) => Column(
                                children: [
                                  Text(
                                      '${r.temperature.celsius.toStringAsFixed(0)}ºC')
                                ],
                              ))
                ],
              ))
            ]),
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
