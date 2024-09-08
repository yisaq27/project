import 'package:get_it/get_it.dart';
import 'package:pop/data/repository/auth/auth_repository_impl.dart';
import 'package:pop/data/sources/auth/auth_firebase_service.dart';
import 'package:pop/domain/repository/auth/auth.dart';

final sl = GetIt.instance;

Future<void> initalizeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
