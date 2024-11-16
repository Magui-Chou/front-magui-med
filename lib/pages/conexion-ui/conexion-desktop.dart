import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/pages/connexion-widget/connexion-section1.dart';
import 'package:testflutter/pages/connexion-widget/connexion-section2.dart';
import 'package:testflutter/pages/widget/section-two-button.dart';

class ConnexionDestop extends StatelessWidget {
  const ConnexionDestop({super.key});

  @override
  
  Widget build(BuildContext context) {
     final connexionBloc = Provider.of<ConnexionBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(20.0),
                //height: 1400,
                //width: 1400,
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
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 4,
                      width: size.width * .4,
                      //color: Colors.red,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                                'Bienvenue sur VeruMed !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Nous sommes ravis de vous accueillir dans notre communauté. En quelques étapes simples, créez votre compte et commencez votre parcours vers une meilleure santé. .',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          SizedBox(height: 25),
                        SectionTwoButton(
                          ontap1: (){
                            context.go('/inscription');

                          },
                          ontap2: (){
                          },
                        
                          couleur2: const Color(0xFF3dd0ba),
                          couleur1:  Colors.white,
                          couleurText2: Colors.white,
                          couleurText1: const Color(0xFF3dd0ba),
                          heightBtn: 100,
                        ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Suivi personnalisé de l\'activité physique',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Conseils nutritionnels adaptés',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Analyses en temps réel de la santé',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    //change section  
                   connexionBloc.page ==0? const ConnexionSection1():const ConnexionSection2(),

                  ],
                )))
          ],
        ),
      ),
    );
  }
}