import 'package:app_distribution_website/firebase_options.dart';
import 'package:app_distribution_website/ui/web/ui/web_page.dart';
import 'package:app_distribution_website/utils/color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
        builder: (_, widget) => MaterialApp(
          color: AppColors.black,
              theme: ThemeData(
                primarySwatch: const MaterialColor(
                  0xFF000000,
                  <int,Color>{
                    50:Color(0xFF000000),
                    100:Color(0xFF000000),
                    200:Color(0xFF000000),
                    300:Color(0xFF000000),
                    400:Color(0xFF000000),
                    500:Color(0xFF000000),
                    600:Color(0xFF000000),
                    700:Color(0xFF000000),
                    800:Color(0xFF000000),
                    900:Color(0xFF000000),
                  }
                )
              ),
              title: 'Ticket Station',
              home: const WebPage(
              ),
            ),
    );
  }
}
