import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_test/core/platform/network_info.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfoImpl networkInfo;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfo = NetworkInfoImpl(mockConnectivity);
  });

  group('ConnectivityResult values', () {
    test(
        'should call Connectivity.checkConnectivity() once and return true when ConnectivityResult is wifi',
        () async {
      const tConnectivityResult = ConnectivityResult.wifi;
      // arrange
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);

      // act
      final result = await networkInfo.isConnected;

      // assert
      verify(mockConnectivity.checkConnectivity());
      expect(result, equals(true));
    });

    test(
        'should call Connectivity.checkConnectivity() once and return true when ConnectivityResult is mobile',
        () async {
      const tConnectivityResult = ConnectivityResult.mobile;
      // arrange
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);

      // act
      final result = await networkInfo.isConnected;

      // assert
      verify(mockConnectivity.checkConnectivity());
      expect(result, equals(true));
    });

    test(
        'should call Connectivity.checkConnectivity() once and return true when ConnectivityResult is ethernet',
        () async {
      const tConnectivityResult = ConnectivityResult.ethernet;
      // arrange
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);

      // act
      final result = await networkInfo.isConnected;

      // assert
      verify(mockConnectivity.checkConnectivity());
      expect(result, equals(true));
    });

    test(
        'should call Connectivity.checkConnectivity() once and return true when ConnectivityResult is bluetooth',
        () async {
      const tConnectivityResult = ConnectivityResult.bluetooth;
      // arrange
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);

      // act
      final result = await networkInfo.isConnected;

      // assert
      verify(mockConnectivity.checkConnectivity());
      expect(result, equals(true));
    });

    test(
        'should call Connectivity.checkConnectivity() once and return FALSE when ConnectivityResult is none',
        () async {
      const tConnectivityResult = ConnectivityResult.none;
      // arrange
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);

      // act
      final result = await networkInfo.isConnected;

      // assert
      verify(mockConnectivity.checkConnectivity());
      expect(result, equals(false));
    });
  });
}
