import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:showcase/components/my_component.dart';
import '../helpers/golden_boundary.dart';

void main() {
  testWidgets('MyComponent golden', (WidgetTester tester) async {
    await tester.pumpWidget(GoldenBoundary(
      child: MyComponent(),
    ));

    await expectLater(
      find.byType(Container).first,
      matchesGoldenFile('golden.png'),
    );
  });
}
