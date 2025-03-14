import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_1/home/Tabs/QuranTab.dart';
import 'package:islami_1/home/quran_details/quran_chapter.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "QuranDetails";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    QuranArgs args = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    if(suraLines.isEmpty){
    loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: Card  (
            child:  suraLines.isEmpty
                ? Center(
              child: CircularProgressIndicator(),
            ):
            ListView.separated(
                itemBuilder: (context, index) => QuranChapter(
                    chapter: suraLines[index],
                    index: index),
                separatorBuilder: (context, index) => Divider(),
                itemCount: suraLines.length),
          ),
        ));
  }

  List<String> suraLines = [];

  loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    suraLines = fileContent.split("\n");
    setState(() {

    });
  }
}

class QuranArgs {
  String name;
  int index;

  QuranArgs(this.name, this.index);
}
