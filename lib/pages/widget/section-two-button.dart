import 'package:flutter/material.dart';

class SectionTwoButton extends StatelessWidget {
  final String title1;
  
  final String title2;
  final Function ontap1;
  final Function ontap2;
  final Color couleur1;
  final Color couleur2;
  final Color couleurText1;
  final Color couleurText2;
  final double fSize;
  final double heightBtn;
  const SectionTwoButton(
      {super.key,
      this.title1 = 'Inscription',
      this.title2 = 'Connexion', 
      required this.ontap1,
      required this.ontap2,
      required this.couleur1,
      required this.couleur2,
      required this.couleurText1,
      required this.couleurText2,
      this.fSize= 14,
      required this.heightBtn,
     });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                
                margin: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        //color: Colors.white,
                        height: heightBtn,
                        
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: couleurText1,
                            backgroundColor: couleur1,
                            shape: const ContinuousRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10)), // Rayon des coins personnalisés
                            ),
                          ),
                          onPressed: () => ontap1(),
                          child: Text(title1,style: TextStyle(fontSize: fSize),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                //color: Colors.white,
                height: heightBtn,
                margin: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 0, bottom: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: couleurText2,
                      backgroundColor: couleur2,
                      shape: const ContinuousRectangleBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(
                            10)), // Rayon des coins personnalisés
                      ),
                    ),
                    onPressed: () => ontap2(),
                    child: Text(title2,style: TextStyle(fontSize: fSize),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
