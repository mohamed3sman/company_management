import 'package:fingerPrint/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/utils/functions/setup_service_locator.dart' as di;

void main() async {
  await Hive.initFlutter();
  await di.init();
  // Hive.registerAdapter(BookEntityAdapter());
  // await Hive.openBox<BookEntity>(kFeaturedBox);
  // await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const fingerPrint());
}
