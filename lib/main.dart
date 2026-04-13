import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_way_app/core/dependency_injection/dependency_injection.dart';
import 'package:muslim_way_app/core/utils/observers/stats_observer.dart';
import 'package:muslim_way_app/muslim_way_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = StatesObserver();
  DependencyInjection.init();
  // await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(MuslimWayApp());
}
