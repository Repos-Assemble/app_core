// Copyright (c) 2025 Order of Runes Authors. All rights reserved.

import 'package:app_core/src/base/base_model.dart';
import 'package:equatable/equatable.dart';

abstract class CoreListModel<T extends BaseModel> extends Equatable {
  const CoreListModel(this.records);

  final List<T> records;

  int get total;
}
