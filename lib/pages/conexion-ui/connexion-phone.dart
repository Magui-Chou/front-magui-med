import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/pages/connexion-widget/connexion-section1.dart';
import 'package:testflutter/pages/connexion-widget/connexion-widget-mobile/connexion-section1-mobile.dart';
import 'package:testflutter/pages/connexion-widget/connexion-widget-mobile/connexion-section2-mobile.dart';
import 'package:testflutter/pages/widget/section-two-button.dart';

class ConnexionPhone extends StatelessWidget {
  const ConnexionPhone({super.key});

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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/cover.jpg"),
                    fit: BoxFit.cover,
                  ),
                )
                ),
            Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color.fromARGB(255, 5, 142, 171)
                      .withOpacity(.8), // Couleur avec opacité
                ),
                child: Center(
                   //change section  
                   child: connexionBloc.page ==0? const ConnexionSection1Mobile():ConnexionSection2Mobile(),

                    
                )
                )
          
          ],
        ),
      ),
    );
  }
}
