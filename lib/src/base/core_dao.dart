// Copyright (c) 2024 Order of Runes Authors. All rights reserved.

import 'package:app_core/src/base/base_model.dart';
import 'package:app_core/src/store/store.dart';

/// Base class for all cached data sources
abstract class CoreDao<E extends Exception> {
  const CoreDao();

  CoreStore<T, E> openStore<T extends BaseModel>({String? suffix, bool eternal = false});

  Future<void> runBatch({bool eternal = false});
}
