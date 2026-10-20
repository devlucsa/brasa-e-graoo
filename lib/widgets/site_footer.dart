import 'package:flutter/material.dart';
import '../theme.dart';

class SiteFooter extends StatelessWidget {
  const SiteFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: marrom,
      padding: const EdgeInsets.all(12),
      child: const Text(
        'Brasa & Grão  •  Terça a domingo, 18h às 23h30',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
