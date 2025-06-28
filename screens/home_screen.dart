import 'package:flutter/material.dart';
import 'package:my_first_project/model/model_constants.dart';
import 'package:my_first_project/model/supabase_connector.dart';
import 'package:my_first_project/widgets/Avatar.dart';
import 'package:my_first_project/widgets/CustomTextStyle.dart';
import 'package:my_first_project/widgets/appBarWidget.dart';
import 'package:my_first_project/constants.dart';
import 'package:my_first_project/widgets/dateTimeCard.dart';
import 'package:my_first_project/widgets/date_calendar.dart';
import 'package:my_first_project/widgets/elevated_trailing_button.dart';
import 'package:my_first_project/widgets/info_card.dart';
import 'package:my_first_project/widgets/loader.dart';
import 'package:my_first_project/widgets/login_btn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SupabaseHelper? supabaseRef;
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    supabaseRef = SupabaseHelper.getInstance;
    connectSupabase();
  }

  Future<void> connectSupabase() async {
    try {
      await supabaseRef!.supabaseConnector();
      final result = await supabaseRef!.fetchData();
      setState(() {
        data = result;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to connect to Supabase: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: data.isEmpty
            ? Loader(text: 'Loading organizer data...',)
            : SingleChildScrollView(
                child: Column(
                  children: [
                    CustomImageAppBar(
                      imagePath: appBarImgPath,
                      overlayText: appBarOverlayText,
                      height: appBarHeight,
                    ),
                    SizedBox(height: 20),
                    DateTimeCard(
                      leading: DateCalendar(
                        dayText: data[0][kColDay].toString(),
                      ),
                      title: data[0][kColDate].toString(),
                      subtitle: '${data[0][kColTimings]}',
                    ),
                    SizedBox(height: 10),
                    CustomStyledText(text: 'Organizer'),
                    DateTimeCard(
                      leading: ProfileAvatar(imagePath: organizerImgPath),
                      title: data[0][kColName].toString(),
                      subtitle: data[0][kColProfession].toString(),
                      trailing: ElevatedTrailingButton(
                        onPressed: () {},
                        text: 'Follow',
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomStyledText(text: 'About:'),
                    InfoCardText(text: data[0][kColAbout].toString()),
                    SizedBox(height: 10),
                    LoginBtn(onPressed: () {}, text: 'Join Now'),
                  ],
                ),
              ),
      ),
    );
  }
}
