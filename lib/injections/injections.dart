import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:youtube_scrap_fe/injections/injections.config.dart';

final getIt = GetIt.instance;


@InjectableInit()
void configureDependencies() => getIt.init();