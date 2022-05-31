// Mocks generated by Mockito 5.2.0 from annotations
// in weather_test/test/infrastructure/weather/weather_local_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;
import 'dart:typed_data' as _i6;

import 'package:hive/hive.dart' as _i2;
import 'package:hive/src/box/default_compaction_strategy.dart' as _i5;
import 'package:hive/src/box/default_key_comparator.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeBox_0<E> extends _i1.Fake implements _i2.Box<E> {}

class _FakeLazyBox_1<E> extends _i1.Fake implements _i2.LazyBox<E> {}

/// A class which mocks [HiveInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockHiveInterface extends _i1.Mock implements _i2.HiveInterface {
  MockHiveInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void init(String? path,
          {_i2.HiveStorageBackendPreference? backendPreference =
              _i2.HiveStorageBackendPreference.native}) =>
      super.noSuchMethod(
          Invocation.method(
              #init, [path], {#backendPreference: backendPreference}),
          returnValueForMissingStub: null);
  @override
  _i3.Future<_i2.Box<E>> openBox<E>(String? name,
          {_i2.HiveCipher? encryptionCipher,
          _i2.KeyComparator? keyComparator = _i4.defaultKeyComparator,
          _i2.CompactionStrategy? compactionStrategy =
              _i5.defaultCompactionStrategy,
          bool? crashRecovery = true,
          String? path,
          _i6.Uint8List? bytes,
          String? collection,
          List<int>? encryptionKey}) =>
      (super.noSuchMethod(
              Invocation.method(#openBox, [
                name
              ], {
                #encryptionCipher: encryptionCipher,
                #keyComparator: keyComparator,
                #compactionStrategy: compactionStrategy,
                #crashRecovery: crashRecovery,
                #path: path,
                #bytes: bytes,
                #collection: collection,
                #encryptionKey: encryptionKey
              }),
              returnValue: Future<_i2.Box<E>>.value(_FakeBox_0<E>()))
          as _i3.Future<_i2.Box<E>>);
  @override
  _i3.Future<_i2.LazyBox<E>> openLazyBox<E>(String? name,
          {_i2.HiveCipher? encryptionCipher,
          _i2.KeyComparator? keyComparator = _i4.defaultKeyComparator,
          _i2.CompactionStrategy? compactionStrategy =
              _i5.defaultCompactionStrategy,
          bool? crashRecovery = true,
          String? path,
          String? collection,
          List<int>? encryptionKey}) =>
      (super.noSuchMethod(
              Invocation.method(#openLazyBox, [
                name
              ], {
                #encryptionCipher: encryptionCipher,
                #keyComparator: keyComparator,
                #compactionStrategy: compactionStrategy,
                #crashRecovery: crashRecovery,
                #path: path,
                #collection: collection,
                #encryptionKey: encryptionKey
              }),
              returnValue: Future<_i2.LazyBox<E>>.value(_FakeLazyBox_1<E>()))
          as _i3.Future<_i2.LazyBox<E>>);
  @override
  _i2.Box<E> box<E>(String? name) =>
      (super.noSuchMethod(Invocation.method(#box, [name]),
          returnValue: _FakeBox_0<E>()) as _i2.Box<E>);
  @override
  _i2.LazyBox<E> lazyBox<E>(String? name) =>
      (super.noSuchMethod(Invocation.method(#lazyBox, [name]),
          returnValue: _FakeLazyBox_1<E>()) as _i2.LazyBox<E>);
  @override
  bool isBoxOpen(String? name) =>
      (super.noSuchMethod(Invocation.method(#isBoxOpen, [name]),
          returnValue: false) as bool);
  @override
  _i3.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteBoxFromDisk(String? name, {String? path}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteBoxFromDisk, [name], {#path: path}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteFromDisk() =>
      (super.noSuchMethod(Invocation.method(#deleteFromDisk, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  List<int> generateSecureKey() =>
      (super.noSuchMethod(Invocation.method(#generateSecureKey, []),
          returnValue: <int>[]) as List<int>);
  @override
  _i3.Future<bool> boxExists(String? name, {String? path}) =>
      (super.noSuchMethod(Invocation.method(#boxExists, [name], {#path: path}),
          returnValue: Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  void registerAdapter<T>(_i2.TypeAdapter<T>? adapter,
          {bool? internal = false, bool? override = false}) =>
      super.noSuchMethod(
          Invocation.method(#registerAdapter, [adapter],
              {#internal: internal, #override: override}),
          returnValueForMissingStub: null);
  @override
  bool isAdapterRegistered(int? typeId) =>
      (super.noSuchMethod(Invocation.method(#isAdapterRegistered, [typeId]),
          returnValue: false) as bool);
  @override
  void ignoreTypeId<T>(int? typeId) =>
      super.noSuchMethod(Invocation.method(#ignoreTypeId, [typeId]),
          returnValueForMissingStub: null);
}
