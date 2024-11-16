import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/pages/widget/section-information-widget.dart';
import 'package:testflutter/utils/utils.dart';

class InscriptionSection2 extends StatelessWidget {
  const InscriptionSection2({super.key,  this.widthListeDeroulante=150,required this.heightContain, required this.widthContain});
  final double widthListeDeroulante;
  final double heightContain;
  final double  widthContain;

  @override
  Widget build(BuildContext context) {
    final inscriptionBloc = Provider.of<InscriptionBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Container(
      height: heightContain,
      width: widthContain,
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
          SectionInformationWidget(
            title: 'Information personelles',
           sizeTitle: setTypeScreen(size) == TypeScren.Tablet? 20 : 24 ,
            sizeDesc: setTypeScreen(size) == TypeScren.Tablet? 12 : 16 ,
          ),
          const SizedBox(height: 20),
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
                          left: 20, right: 0, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.emailC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
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
                  //           Icons.edit,
                  //           color: Colors.grey[600],
                  //           size: 16,
                  //         ),
                  //         SizedBox(
                  //           width: 4,
                  //         ),
                  //         Expanded(
                  //           child: TextField(
                  //             controller: inscriptionBloc.prenomC,
                  //             decoration: InputDecoration(
                  //               border: InputBorder.none,
                  //               hintText: 'Mot de passe',
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
              SizedBox(height: 20),
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
                              controller: inscriptionBloc.passwordC,
                              obscureText: true,

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: ' Mot de Passe',
                                
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
                              controller: inscriptionBloc.confirmPasswordC,
                                                            obscureText: true,

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Confirmation Mot de Passe',
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
              SizedBox(height: 20),
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
                            Icons.person,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.fonctionC,
                              readOnly: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Fonction',
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
                            Icons.rule,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Expanded(
                            child: DropdownButton(items: [
                              DropdownMenuItem(child: Container(
                                width: widthListeDeroulante,
                                child: Text('Docteur'),
                              ),value: 'docteur',),
                              DropdownMenuItem(child: Container(
                                width: widthListeDeroulante,
                                child: Text('Patient'),
                              ),value: 'patient',),
                              
                            ],value: inscriptionBloc.roleC,
                            onChanged: (v){
                              inscriptionBloc.setRole(v!);
                            },
                            underline: SizedBox(),
                            ),
                            // child: TextField(
                            //   controller: inscriptionBloc.emailC,
                            //   decoration: InputDecoration(
                            //     border: InputBorder.none,
                            //     hintText: 'Role',
                            //     hintStyle: TextStyle(
                            //         color: Colors.grey[600], fontSize: 16),
                            //   ),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                    inscriptionBloc.setPage(0);
                                    // Action à réaliser lors de la soumission
                                    // print('Formulaire soumis');
                                  },
                                  child: const Text('Precedent'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                            child: Container(
                              //color: Colors.white,
                              height: 65,
                              margin: const EdgeInsets.only(
                                  left: 0, right: 20, top: 0, bottom: 0),
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
                                    inscriptionBloc.ajouterUser();
                                    // Action à réaliser lors de la soumission
                                    // print('Formulaire soumis');
                                  },
                                  child: const Text('Suivant'),
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
