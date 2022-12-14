import 'package:consultation/screen/login.dart';
import 'package:consultation/utility/all_string_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cubit/appointment_cubit/appointment_cubit.dart';
import 'cubit/login_cubit/login_cubit.dart';
import 'cubit/main_page_cubit/main_page_cubit.dart';
import 'cubit/signup_cubit/signup_cubit.dart';
import 'screen/PROFILE/base_profile.dart';
import 'screen/RESCHUDULE/reschudule.dart';
import 'screen/appointment.dart';
import 'screen/eviews.dart';
import 'screen/main_page/main_page.dart';
import 'screen/menu_mostchar.dart';

import 'screen/reviews2.dart';
import 'screen/signup_mostchar_1.dart';
import 'screen/signup_mostchar_2.dart';
import 'screen/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utility/router.dart';
import 'utility/storage.dart';
import 'package:get_storage/get_storage.dart';
void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
String? token=    SecureStorage.readSecureData( AllStringConst.Token);
print("this the token=> $token");
  runApp(  MyApp(token!=null));
}

class MyApp extends StatelessWidget {


    MyApp(this.haveToken);

  bool haveToken;

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    print("this ooo   $haveToken");
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),   BlocProvider(
          create: (context) => SignupCubit(),
        ),


        BlocProvider(
          create: (context) => MainPageCubit(),
        ),
        BlocProvider(
          create: (context) => AppointmentCubit(),
        ),



         ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: GoogleFonts.cairoTextTheme(
              Theme.of(context).textTheme,
            ),
            primarySwatch: Colors.blue,
          )
          , //RESCHUDULE()//BaseProfile()//Reviews2()//Reviews()//Appointment()// MenuMostchar()// SignUpMostchar2()// SignUpMostchar1()//LOGIN()// SPLASH()//const MyHomePage(title: 'Flutter Demo Home Page'),
        onGenerateRoute: onGenerateRoute,
        navigatorKey: navigatorKey,
        initialRoute: haveToken? Routes.MainPage  :Routes.LoginRoute,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
