import 'package:flutter_test/flutter_test.dart';
import 'package:langloop/domain/rules.dart';

void main() {
  test('score advances and then stops at the cap', () {
    expect(nextScore(0), 1);
    expect(capped(12, 12), 12);
    expect(nextScore(-4), 0);
  });
}
