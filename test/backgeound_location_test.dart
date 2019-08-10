import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:backgeound_location/backgeound_location.dart';

void main() {
  const MethodChannel channel = MethodChannel('backgeound_location');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}