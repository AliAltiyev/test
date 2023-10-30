import 'package:data/di/di.dart';
import 'package:home/order.dart';
import 'package:test/application.dart';
import 'package:test/export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  await initData();
  await initNavigation();
  runApp(Application());
}
