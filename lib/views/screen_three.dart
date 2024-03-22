import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Fruits Name",style:  TextStyle(fontSize: 25)),
            ListView.builder(itemBuilder: (context, index) {
              switch(index){
                case 0: return Center(child: Text(AppLocalizations.of(context)!.key11,style: const TextStyle(fontSize: 20),));
                case 1: return Center(child: Text(AppLocalizations.of(context)!.key12,style: const TextStyle(fontSize: 20),));
                case 2: return Center(child: Text(AppLocalizations.of(context)!.key13,style: const TextStyle(fontSize: 20),));
                case 3: return Center(child: Text(AppLocalizations.of(context)!.key14,style: const TextStyle(fontSize: 20),));
                case 4: return Center(child: Text(AppLocalizations.of(context)!.key15,style: const TextStyle(fontSize: 20),));
              }
              return null;
            },shrinkWrap: true,itemCount: 5,),
            SizedBox(height: MediaQuery.of(context).size.height*0.01),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/ScreenFour");
              },
              child: const Text("View to More"),
            )
          ],
        ),
      ),
    );
  }
}
