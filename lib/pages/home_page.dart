import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  final VoidCallback abrirCardapio;
  const HomePage({super.key, required this.abrirCardapio});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(color: marrom, borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sabor defumado na brasa,\ncrosta perfeita a cada mordida.',
                style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text('Feito na hora, com ingredientes de verdade.',
                  style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: abrirCardapio,
                    style: ElevatedButton.styleFrom(backgroundColor: laranja, foregroundColor: Colors.white),
                    child: const Text('Explorar Cardápio'),
                  ),
                  const Text('★ 4.9  •  Favorito da casa', style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 16),
              const Center(child: Text('🍔', style: TextStyle(fontSize: 78))),
              const Text('Brasa Clássico  •  R\$ 38,90',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 12,
          runSpacing: 12,
          children: [
            _Destaque(icone: '#', titulo: 'Blend 100% Angus'),
            _Destaque(icone: '#', titulo: 'Torrefação própria'),
            _Destaque(icone: '#', titulo: 'Entrega quentinha'),
          ],
        ),
        const SizedBox(height: 22),
        const Text('Os Mais Pedidos da Semana',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        const Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            ProductCard(icone: '#', nome: 'Duplo Brasa & Bacon', descricao: 'Dois burgers, queijo e bacon.', preco: 'R\$ 38,90'),
            ProductCard(icone: '#', nome: 'Fritas da Casa', descricao: 'Batatas rústicas com ervas.', preco: 'R\$ 19,90'),
            ProductCard(icone: '#', nome: 'Cheddar Onion', descricao: 'Cheddar cremoso e cebola.', preco: 'R\$ 34,90'),
          ],
        ),
      ],
    );
  }
}
