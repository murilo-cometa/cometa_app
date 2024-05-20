import 'package:cometa_app/common/component/custom_menu_item.dart';
import 'package:cometa_app/view/menu_extend.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página inicial'),
      ),
      body: _buildBody(context: context),
    );
  }

  Widget _buildBody({required BuildContext context}) {
    return ListView(
      padding: const EdgeInsets.all(30),
      children: [
        const CustomMenuItem(
          title: 'Produtos',
          leading: Icon(Icons.adf_scanner_outlined),
        ),
        const CustomMenuItem(
          title: 'Fornecedores',
          leading: Icon(Icons.add_road),
        ),
        const CustomMenuItem(
          title: 'Categorias',
          leading: Icon(Icons.add_box_outlined),
        ),
        CustomMenuItem(
          title: 'Mais opções',
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MenuExtend();
            },));
          },
        ),
      ],
    );
  }
}
