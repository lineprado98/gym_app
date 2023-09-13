import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gym/app_widget.dart';
import 'package:gym/core/service_locator.dart';

void main() {
  ServiceLocator.setup();
  runApp(const AppWidget());
}
