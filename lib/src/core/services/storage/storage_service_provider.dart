import 'package:chitrapat/src/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider that locates an [StorageService] interface to implementation
final storageServiceProvider = Provider<StorageService>(
  (_) => HiveStorageService(),
);
