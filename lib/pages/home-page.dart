
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(1.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: size.height * .9,
                      width: size.width * .3,
                      decoration: BoxDecoration(
                        color: const Color(0xFF123456),

                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ), // Rayon des coins arrondis
                        image: DecorationImage(
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.8),
                            BlendMode.dstATop,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: size.height * .8,
                          width: size.width * .25,
                          decoration: BoxDecoration(
                             borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                            border: Border.all(color: const Color(0xFFEAFFFF)),
                            //color: Colors.red
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Don\'t have an account?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              const SizedBox(height: 25),
                              // decoration: BoxDecoration(
                              //   color: Colors.red,
                              //   border: Border.all(
                              //   color: Colors.white,
                              //   //color: const Color(0xFF000000),
                              //   width: 1.0,
                              //   style: BorderStyle.solid),
                              //   borderRadius: BorderRadius.all(
                              //   Radius.circular(10),),
                              // ),
                              // height: 40,
                              // width: 100,
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: const Color(0xFFEAFFFF),
                                ),
                                onPressed: () {
                                  context.go('/inscription');
                                  // Action à réaliser lors de la soumission
                                  //print('Formulaire soumis');
                                },
                                child: const Text('Registre'),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                    height: size.height * 0.9,
                    width: size.width * .3,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAFFFF),

                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ), // Rayon des coins arrondis
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 0, top: 20, bottom: 40),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: <Widget>[
                                const Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Color(0xFF123456),
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Positioned(
                                  bottom:
                                      .1, // Ajuste cet espace selon tes besoins
                                  child: Container(
                                    height: 2, // Épaisseur du soulignement
                                    color: const Color(0xff123456),
                                    width:
                                        300, // Largeur du soulignement, ajuste en fonction de la largeur du texte
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //SizedBox(height: 0),
                          const SizedBox(
                            // width: 250,
                            ///height:50,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 0, top: 0, bottom: 0),
                              child: Text(
                                'Nom',
                                style: TextStyle(
                                    color: Color(0xff123456),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 0),
                          Container(
                            width: 300,
                            height: 45,
                            color: Colors.white,
                            margin: const EdgeInsets.only(
                                left: 20, right: 0, top: 0, bottom: 0),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 0, top: 0, bottom: 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Entrez votre nom......',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //SizedBox(height: 0),
                          const SizedBox(
                            // width: 250,
                            ///height:50,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 0, top: 0, bottom: 0),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: Color(0xff123456),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 0),
                          Container(
                            width: 300,
                            height: 45,
                            color: Colors.white,
                            margin: const EdgeInsets.only(
                                left: 20, right: 0, top: 0, bottom: 0),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 0, top: 0, bottom: 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Entrez votre mot de passe......',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: 300,
                            height: 55,
                            //color: Colors.white,
                            margin: const EdgeInsets.only(
                                left: 20, right: 0, top: 0, bottom: 0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: const Color(0xFF123456),
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        0), // Rayon des coins personnalisés
                                  ),
                                ),
                                onPressed: () {
                                  // Action à réaliser lors de la soumission
                                  // print('Formulaire soumis');
                                },
                                child: const Text('Soumettre'),
                              ),
                            ),
                          ),
                        
                        ]),
                  ),
                ]),
          ),
        )

        // body: Center(
        //   child:Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //      Container(
        //           color: Colors.red,
        //           height: 100,
        //           width: 1000,
        //           child: Center(child: Text('Magui 1', style: TextStyle(color: Colors.white))),
        //         ),
        //         Container(
        //           color: Colors.green,
        //           height: 100,
        //           width: 100,
        //           child: Center(child: Text('Magui 2', style: TextStyle(color: Colors.white))),
        //         ),
        //         Container(
        //           color: Colors.blue,
        //           height: 100,
        //           width: 100,
        //           child: Center(child: Text('Magui 3', style: TextStyle(color: Colors.white))),
        //         ),
        //     ],
        // )
        // )

        // body: Container(
        //   child: Text('Mon test'),
        //   color: Colors.blue,
        // //  alignment: Alignment.center,
        //  // padding: EdgeInsets.all(20.0),
        //  // constraints: BoxConstraints.tightForFinite(
        //      width:200.0,
        //      height:200.0,
        //      transform: Matrix4.rotationZ(0.05),
        //       margin: EdgeInsets.all(20.0),

        //     //)
        // )
        //STACK
        // body: Container(
        //   child: Stack(
        //     children: <Widget>[
        //       Positioned(
        //         top: 0,
        //         left: -00,
        //         child:CircleAvatar(
        //           radius:110,
        //           backgroundColor: Colors.red,
        //         ),

        //       ),
        //       Positioned(
        //         top: 30,
        //         right: 50,
        //         child:CircleAvatar(
        //           radius:70,
        //           backgroundColor: Colors.pink,
        //         ),

        //        ),
        //       Positioned(
        //         top: 70,
        //         bottom: 10,
        //         left: 100,
        //         child:CircleAvatar(
        //           radius:110,
        //           //backgroundImage: AssetImage('C:/Users/7MAKSACOD/PC/OneDrive/Bureau/fe.jpg'),
        //           backgroundColor: Colors.purple,
        //         ),

        //       ),

        //     ]
        //   )
        // )
        );
  }
}
