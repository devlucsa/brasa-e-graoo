import 'package:flutter/material.dart';
import '../theme.dart';

class SiteHeader extends StatelessWidget {
  final int paginaAtual;
  final ValueChanged<int> aoSelecionar;

  const SiteHeader({
    super.key,
    required this.paginaAtual,
    required this.aoSelecionar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          const Icon(Icons.local_fire_department, color: laranja, size: 30),
          const SizedBox(width: 6),
          const Text('Brasa & Grão',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Spacer(),
          TextButton(
            onPressed: () => aoSelecionar(0),
            child: Text('Início', style: _estiloMenu(paginaAtual == 0)),
          ),
          TextButton(
            onPressed: () => aoSelecionar(1),
            child: Text('Cardápio', style: _estiloMenu(paginaAtual == 1)),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.circle, color: Colors.green, size: 9),
          const SizedBox(width: 5),
          const Text('Aberto • 25–35 min', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
  TextStyle _estiloMenu(bool selecionado) => TextStyle(
        color: selecionado ? laranja : marrom,
        fontWeight: selecionado ? FontWeight.bold : FontWeight.normal,
      );
}
