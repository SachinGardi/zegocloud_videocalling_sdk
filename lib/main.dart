import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const CallPage(),
    );
  }
}

class CallPage extends StatefulWidget {
  const CallPage({Key? key,}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  // final String callID;


  @override
  Widget build(BuildContext context) {
     return ZegoUIKitPrebuiltCall(
     appID: 1642622031, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
     appSign: '268e7017103f8c30b997188a2dd386a374b516978e186be49b17196e2b196e48', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
     userID: '1235',
     userName: 'Nikhil',
     callID: '12',
     // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
     config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
   );
  }
}

