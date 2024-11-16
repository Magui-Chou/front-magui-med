import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/connexion-bloc.dart';

class ConnexionSection1Mobile extends StatelessWidget {
  const ConnexionSection1Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final connexionBloc = Provider.of<ConnexionBloc>(context);

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .4,
      width: size.width * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white.withOpacity(1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                          readOnly: false,
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
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
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
                                connexionBloc.authentification();
                                //inscriptionBloc.setPage(1);
                                // Action à réaliser lors de la soumission
                                // print('Formulaire soumis');
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
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: size.width * .05),
              Text('Mot de passe oublie ?'),
              const Spacer(),
              GestureDetector(
                  onTap: () => context.go('/Inscription'),
                  child: Text('Inscrivez vous')),
              SizedBox(width: size.width * .05)
            ],
          )
        ],
      ),
    );
  }
}
