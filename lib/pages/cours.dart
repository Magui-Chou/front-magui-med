import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/blocs/name-blocs.dart';
import 'package:testflutter/pages/sous-pages/page1.dart';
import 'package:testflutter/pages/sous-pages/page2.dart';

class CoursPage extends StatelessWidget {
  const CoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameBlocs = Provider.of<NameBlocs>(context);
    return nameBlocs.pageNumber == 1 ? Page1() : Page2();
    
    }
}
