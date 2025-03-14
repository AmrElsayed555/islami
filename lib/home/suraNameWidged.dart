import 'package:flutter/material.dart';
import 'package:islami_1/home/quran_details/quran_details.dart';

class SuraNameWidged extends StatelessWidget {
final String suraName;
final int suraNumber;
final int index ;
SuraNameWidged ({
  required this.suraName,
  required this.suraNumber,
  required this.index,

});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.pushNamed(context, QuranDetails.routeName,
              arguments: QuranArgs(suraName, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(suraName,textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20  ,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            height: 30,
            width: 2,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: Text(suraNumber.toString(),textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20  ,
              fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}
