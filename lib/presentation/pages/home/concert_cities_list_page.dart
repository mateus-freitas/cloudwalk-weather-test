import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/application/concert_cities/concert_cities_list_bloc.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:weather_test/presentation/core/components/states/error_state_view.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';
import 'package:weather_test/presentation/core/responsive/responsive_layout.dart';

class ConcertCitiesListPage extends StatelessWidget {
  const ConcertCitiesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: localize(context).appTitle,
        titleStyle: const TextStyle(fontWeight: FontWeight.w900),
        body: BlocConsumer<ConcertCitiesListBloc, ConcertCitiesListState>(
            builder: (context, states) {
              return states.map<Widget>(
                  loading: (_) =>
                      const Center(child: CircularProgressIndicator.adaptive()),
                  failed: (_) => ErrorStateView(
                        errorMessage: localize(context).generalErrorMessage,
                        onTryAgain: () =>
                            BlocProvider.of<ConcertCitiesListBloc>(context).add(
                                const ConcertCitiesListEvent
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
                    return _LoadedCities(cities: loaded.cities);
                  });
            },
            listener: (context, state) {}));
  }
}

class _LoadedCities extends StatelessWidget {
  final List<ConcertCity> cities;
  const _LoadedCities({Key? key, required this.cities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(cities);
    return ResponsiveLayout(
      large: Container(),
      small: ListView.builder(
        itemBuilder: (context, index) {
          print(cities[index]);
          return Container(color: Colors.yellow);
        },
        itemCount: cities.length,
      ),
    );
  }
}
