import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/pages/connexion-widget/connexion-section1.dart';
import 'package:testflutter/pages/inscription-widget/inscription-section1.dart';
import 'package:testflutter/pages/inscription-widget/inscription-section2.dart';
import 'package:testflutter/pages/inscription-widget/inscription-section3.dart';
import 'package:testflutter/pages/widget/section-two-button.dart';

class InscriptionPhone extends StatelessWidget {
  const InscriptionPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final inscriptionBloc = Provider.of<InscriptionBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cover.jpg"),
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color.fromARGB(255, 5, 142, 171)
                      .withOpacity(.8), // Couleur avec opacité
                ),
                
                ),
               // SizedBox(width: 50),
               Container(
                margin: EdgeInsets.only(right: 20),
                child: Center(child: 
                inscriptionBloc.page ==0 ?  InscriptionSection1(
                  heightContain: size.height * .7, 
                  widthContain: size.width * .8 ,
                  ): inscriptionBloc.page ==1 ?  InscriptionSection2(
                    widthListeDeroulante: 70,
                    heightContain: size.height * .7, 
                  widthContain: size.width * .8 ,
                   ) :  InscriptionSection3( heightContain: size.height * .7, 
                  widthContain: size.width * .8 ,),),
               )
                

          ],
        ),
      ),
    );
  }
}
