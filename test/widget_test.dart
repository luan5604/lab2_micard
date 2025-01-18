import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mi_card/main.dart';  // Đảm bảo rằng đường dẫn này chính xác.

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Xây dựng ứng dụng của bạn và kích hoạt một frame.
    await tester.pumpWidget(MiCardApp());  // Thay MyApp() bằng MiCardApp()

    // Kiểm tra xem giá trị bắt đầu của bộ đếm có phải là 0 không.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Nhấn vào biểu tượng '+' và kích hoạt một frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Kiểm tra xem bộ đếm đã tăng chưa.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
