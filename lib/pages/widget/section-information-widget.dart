import 'package:flutter/material.dart';

class SectionInformationWidget extends StatelessWidget {
  final String title ;
  final double sizeTitle;
  final String desc ;
  final double sizeDesc;
  const SectionInformationWidget({super.key, required this.title, this.desc='Veuillez remplir le formulaire suivant: ', this.sizeTitle=24, this.sizeDesc= 16});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 1, right: 0, top: 50, bottom: 0),
            child: Text(title.toUpperCase(),
                //textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 65, 114),
                  fontSize: sizeTitle,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                )),
          ),
          
          const SizedBox(height: 0),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 0),
            child: Text(
              desc,
              //textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: sizeDesc),
            ),
          ),
      ],
    );
         
  }
}