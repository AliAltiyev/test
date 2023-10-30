import 'package:core/di/firebase_options.dart';
import 'package:data/di/di.dart';
import 'package:home/order.dart';
import 'package:test/application.dart';
import 'package:test/export.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
       
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initCore();
  await initData();
  await initNavigation();
  runApp(Application());
}
