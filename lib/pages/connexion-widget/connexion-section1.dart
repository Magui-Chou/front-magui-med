import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/pages/widget/section-information-widget.dart';
import 'package:testflutter/utils/utils.dart';
import 'package:crypto/crypto.dart';

class ConnexionSection1 extends StatelessWidget {
  const ConnexionSection1({super.key});

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
          SizedBox(
            height: 50,
          ),
          SectionInformationWidget(
            title: 'Page de connexion',
            desc: 'Veuillez renseigner les champs suivants ',
            sizeTitle: setTypeScreen(size) == TypeScren.Tablet? 20 : 24 ,
            sizeDesc: setTypeScreen(size) == TypeScren.Tablet? 12 : 16 ,

          ),
          const SizedBox(height: 30),
          //SizedBox(height: 0),
          Column(
            children: [
              
              Row(
                children: [
                  
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 45,
                      margin: const EdgeInsets.only(
                          left: 20, right: 0, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.phone,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: connexionBloc.telephoneC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Telephone',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 45,
                      margin: const EdgeInsets.only(
                          left: 20, right: 0, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.password,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: connexionBloc.passwordC,
                              readOnly: false,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mot de passe',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 16),
                              ),
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 00),
                  // Expanded(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       //color: Colors.white,
                  //       border: Border.all(color: Colors.grey),
                  //       borderRadius:
                  //           const BorderRadius.all(Radius.circular(10)),
                  //     ),
                  //     height: 45,
                  //     margin: const EdgeInsets.only(
                  //         left: 20, right: 0, top: 0, bottom: 0),
                  //     child: Row(
                  //       children: [
                  //         SizedBox(
                  //           width: 4,
                  //         ),
                  //         Icon(
                  //           Icons.email,
                  //           color: Colors.grey[600],
                  //           size: 16,
                  //         ),
                  //         SizedBox(
                  //           width: 4,
                  //         ),
                  //         Expanded(
                  //           child: TextField(
                  //             controller: inscriptionBloc.emailC,
                  //             decoration: InputDecoration(
                  //               border: InputBorder.none,
                  //               hintText: 'Email',
                  //               hintStyle: TextStyle(
                  //                   color: Colors.grey[600], fontSize: 16),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          // border:  Border.all(color: Colors.grey),
                          // borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                      //height: 45,
                      margin: const EdgeInsets.only(
                          left: 20, right: 0, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          
                          Expanded(
                            child: Container(
                              //color: Colors.white,
                              height: 65,
                              margin: const EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 0),
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
                                    //inscriptionBloc.setPage(1);
                                    // Action à réaliser lors de la soumission
                                    // print('Formulaire soumis');
                                    connexionBloc.authentification();
                                  },
                                  child: const Text('Se Connecter'),
                                ),
                              ),
                            ),
                          ),
                       
                       
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
