import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:quote_api/main.dart';

import 'Quote.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;
void initStore() {
  //locator.registerSingleton<MyApp>(MyApp());
  locator.registerLazySingleton(() => Quote());
}

final _get = GetIt.I.get;
Quote get quoteManager => _get<Quote>();
