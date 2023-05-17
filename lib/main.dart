import 'package:fingerPrint/app.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'Features/home/domain/entities/book_entity.dart';

import 'core/utils/functions/setup_service_locator.dart' as di;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await di.init();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const fingerPrint());
}
