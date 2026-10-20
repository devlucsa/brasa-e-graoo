import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/product_card.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: const Color(0xFFFFE8C9), borderRadius: BorderRadius.circular(14)),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Escolha sua experiência na brasa',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: marrom)),
              SizedBox(height: 8),
              Text('Smash • Fritas • Café feito na hora'),
            ],
          ),
        ),
        const SizedBox(height: 14),
        const Wrap(spacing: 8, runSpacing: 8, children: [
          Chip(label: Text('Todos os itens'), backgroundColor: laranja),
          Chip(label: Text('Smash Burgers')),
          Chip(label: Text('Porções & Entradas')),
          Chip(label: Text('Cafés & Shakes')),
        ]),
        const SizedBox(height: 18),
        const Text('Linha Smash & Brasa', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Wrap(spacing: 12, runSpacing: 12, children: [
          ProductCard(icone: '#', nome: 'Brasa Clássico', descricao: 'Angus, queijo e molho da casa.', preco: 'R\$ 32,90'),
          ProductCard(icone: '#', nome: 'Cheddar Onion', descricao: 'Cheddar e cebola caramelizada.', preco: 'R\$ 36,90'),
          ProductCard(icone: '#', nome: 'Duplo Bacon', descricao: 'Dois burgers e bacon crocante.', preco: 'R\$ 38,90'),
        ]),
        const SizedBox(height: 18),
        const Text('Acompanhamentos & Cafeteria', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        const Wrap(spacing: 12, runSpacing: 12, children: [
          ProductCard(icone: '#', nome: 'Fritas Rústicas', descricao: 'Com ervas e molho da casa.', preco: 'R\$ 18,90'),
          ProductCard(icone: '#', nome: 'Shake Espresso', descricao: 'Café, leite e sorvete.', preco: 'R\$ 16,90'),
          ProductCard(icone: '#', nome: 'Latte Artesanal', descricao: 'Espresso de torra própria.', preco: 'R\$ 12,90'),
          ProductCard(icone: '#', nome: 'Brownie na Chapa', descricao: 'Com calda de chocolate.', preco: 'R\$ 14,90'),
        ]),
      ],
    );
  }
}
