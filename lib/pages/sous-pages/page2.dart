import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/name-blocs.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final nameBlocs = Provider.of<NameBlocs>(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Page 2',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Bonjour ${nameBlocs.nomC.text}'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
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
                            nameBlocs.setPageNumber(1);
                          },
                          child: const Text('Precedent'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
