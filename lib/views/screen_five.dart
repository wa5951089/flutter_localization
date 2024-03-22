import 'package:flutter/material.dart';
import 'package:flutter_localization/providers/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context,).size.height*0.1),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 'en',
                    child: Text('Change to English'),
                  ),
                  const PopupMenuItem(
                    value: 'hi',
                    child: Text('Change to Hindi'),
                  ),
                  const PopupMenuItem(
                    value: 'ur',
                    child: Text('Change to Urdu'),
                  ),
                  const PopupMenuItem(
                    value: 'ar',
                    child: Text('Change to Arabic'),
                  ),
                ];
              },
              // Action to perform when a menu item is selected
              onSelected: (value) {
                switch(value){
                  case "hi": Provider.of<LocaleProvider>(context,listen: false).setLocale(value);
                  case "en": Provider.of<LocaleProvider>(context,listen: false).setLocale(value);
                  case "ar": Provider.of<LocaleProvider>(context,listen: false).setLocale(value);
                  case "ur": Provider.of<LocaleProvider>(context,listen: false).setLocale(value);
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Text("Change App Language",style: TextStyle(fontSize: 15,color: Colors.white),),
              )
            ),
            SizedBox(height: MediaQuery.of(context,).size.height*0.1),
            const Text("Fruits Name",style:  TextStyle(fontSize: 25)),
            ListView.builder(itemBuilder: (context, index) {
              switch(index){
                case 0: return Center(child: Text(AppLocalizations.of(context)!.key21,style: const TextStyle(fontSize: 20),));
                case 1: return Center(child: Text(AppLocalizations.of(context)!.key22,style: const TextStyle(fontSize: 20),));
                case 2: return Center(child: Text(AppLocalizations.of(context)!.key23,style: const TextStyle(fontSize: 20),));
                case 3: return Center(child: Text(AppLocalizations.of(context)!.key24,style: const TextStyle(fontSize: 20),));
                case 4: return Center(child: Text(AppLocalizations.of(context)!.key25,style: const TextStyle(fontSize: 20),));
                case 5: return Center(child: Text(AppLocalizations.of(context)!.key26,style: const TextStyle(fontSize: 20),));
              }
              return null;
            },shrinkWrap: true,itemCount: 5,),
            SizedBox(height: MediaQuery.of(context,).size.height*0.01),
            ElevatedButton(
              onPressed: (){

              },
              child: const Text("Click to Back"),
            )
          ],
        ),
      ),
    );
  }
}
