import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/inscription-bloc.dart';
import 'package:testflutter/pages/widget/section-information-widget.dart';
import 'package:testflutter/utils/utils.dart';

class InscriptionSection1 extends StatelessWidget {
  const InscriptionSection1({super.key, required this.heightContain, required this.widthContain});
  final double heightContain;
  final double  widthContain;

  @override
  Widget build(BuildContext context) {
    final inscriptionBloc = Provider.of<InscriptionBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Container(
      height:  heightContain,
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
            //sizeTitle: 16,
            //sizeDesc: 12,
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
                            Icons.edit,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.nomC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nom',
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
                            Icons.edit,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.prenomC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Prenom',
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
                            Icons.phone,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.telephoneC,
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
                            Icons.house,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.adresseC,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Adresse',
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
                            Icons.calendar_month,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: TextField(
                              controller: inscriptionBloc.dateNaissanceC,
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Date de Naissance',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 16),
                              ),
                              onTap: () => showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                  initialDate: DateTime(2000)).then((v)=> inscriptionBloc.setDateInscription(v!)),
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
                                    inscriptionBloc.setPage(1);
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
