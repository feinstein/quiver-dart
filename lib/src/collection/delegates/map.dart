// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of quiver.collection;

/// An implementation of [Map] that delegates all methods to another [Map].
/// For instance you can create a FruitMap like this :
///
///     class FruitMap extends DelegatingMap<String, Fruit> {
///       final Map<String, Fruit> _fruits = {};
///
///       Map<String, Fruit> get delegate => _fruits;
///
///       // custom methods
///     }
abstract class DelegatingMap<K, V> implements Map<K, V> {
  Map<K, V> get delegate;

  @override
  V operator [](Object key) => delegate[key];

  @override
  void operator []=(K key, V value) {
    delegate[key] = value;
  }

  @override
  void addAll(Map<K, V> other) => delegate.addAll(other);

  @override
  void addEntries(Iterable<Object> entries) {
    // TODO: Dart 2.0 requires this method to be implemented.
    // Change Iterable<Object> to Iterable<MapEntry<K, V>> when
    // the MapEntry class has been added.
    throw new UnimplementedError("addEntries");
  }

  @override
  Map<K2, V2> cast<K2, V2>() {
    // TODO: Dart 2.0 requires this method to be implemented.
    throw new UnimplementedError("cast");
  }

  @override
  void clear() => delegate.clear();

  @override
  bool containsKey(Object key) => delegate.containsKey(key);

  @override
  bool containsValue(Object value) => delegate.containsValue(value);

  @override
  Iterable<Null> get entries {
    // TODO: Dart 2.0 requires this method to be implemented.
    // Change Iterable<Null> to Iterable<MapEntry<K, V>> when
    // the MapEntry class has been added.
    throw new UnimplementedError("entries");
  }

  @override
  void forEach(void f(K key, V value)) => delegate.forEach(f);

  @override
  bool get isEmpty => delegate.isEmpty;

  @override
  bool get isNotEmpty => delegate.isNotEmpty;

  @override
  Iterable<K> get keys => delegate.keys;

  @override
  int get length => delegate.length;

  @override
  Map<K2, V2> map<K2, V2>(Object transform(K key, V value)) {
    // TODO: Dart 2.0 requires this method to be implemented.
    // Change Object to MapEntry<K2, V2> when
    // the MapEntry class has been added.
    throw new UnimplementedError("map");
  }

  @override
  V putIfAbsent(K key, V ifAbsent()) => delegate.putIfAbsent(key, ifAbsent);

  @override
  V remove(Object key) => delegate.remove(key);

  @override
  void removeWhere(bool test(K key, V value)) {
    // TODO: Dart 2.0 requires this method to be implemented.
    throw new UnimplementedError("removeWhere");
  }

  @override
  V update(K key, V update(V value), {V ifAbsent()}) {
    // TODO: Dart 2.0 requires this method to be implemented.
    throw new UnimplementedError("update");
  }

  @override
  void updateAll(V update(K key, V value)) {
    // TODO: Dart 2.0 requires this method to be implemented.
    throw new UnimplementedError("updateAll");
  }

  @override
  Iterable<V> get values => delegate.values;
}
