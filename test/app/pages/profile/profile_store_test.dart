import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_trazfavela/app/pages/profile/profile_store.dart';

void main() {
  late ProfileController store;

  setUpAll(() {
    store = ProfileController();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
