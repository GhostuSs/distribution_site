import 'package:app_distribution_website/firebase_options.dart';
import 'package:app_distribution_website/ui/web_page/ui/web_page.dart';
import 'package:app_distribution_website/utils/color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
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
        builder: (_, widget) => const MaterialApp(
          color: AppColors.black,
              title: 'Ticket Station',
              home: WebPage(),
            ),
    );
  }
}

