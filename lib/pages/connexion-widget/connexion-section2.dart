import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/pages/widget/section-information-widget.dart';
import 'package:testflutter/utils/utils.dart';

class ConnexionSection2 extends StatelessWidget {
  const ConnexionSection2({super.key});

  @override
  Widget build(BuildContext context) {
    final connexionBloc = Provider.of<ConnexionBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 4,
      width: size.width * .4,
      margin: const EdgeInsets.only(top: 40, left: 40, right: 20, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.all(Radius.circular(10)),
        // Rayon des coins arrondis
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 50),
          SectionInformationWidget(
            title: 'Confirmation Profil',
            desc: 'Veuillez renseigner le code de verication !!!',
            sizeTitle: 16,
            sizeDesc: 13,
          ),
          const SizedBox(height: 50),
          //SizedBox(height: 0),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: connexionBloc.codeC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Code de Verification',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 0),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      //color: Colors.white,
                      height: 65,
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 0, bottom: 0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF228feb),
                            shape: const ContinuousRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      10)), // Rayon des coins personnalisés
                            ),
                          ),
                          onPressed: () {
                            // inscriptionBloc.setPage(2);
                            // Action à réaliser lors de la soumission
                            // print('Formulaire soumis');
                            connexionBloc.verifcode(context);
                          },
                          child: const Text('Enoyer'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
