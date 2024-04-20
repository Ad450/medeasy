import 'dart:developer';

import 'package:core/di/locator.dart';
import 'package:core/storage/local/local.storage.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/entry.dart';

void main() async {
  try {
    setupLocator();
    await LocalStorage.init();
  } catch (e) {
    log(e.toString());
  }
  runApp(const MedeasyPatient());
}
