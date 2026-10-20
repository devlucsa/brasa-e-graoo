import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/menu_page.dart';
import 'widgets/site_header.dart';
import 'widgets/site_footer.dart';
import 'theme.dart';

class BrasaEGraoApp extends StatelessWidget {
  const BrasaEGraoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brasa & Grão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: creme,
        colorScheme: ColorScheme.fromSeed(seedColor: laranja),
        fontFamily: 'Arial',
      ),
      home: const PaginaPrincipal(),
    );
  }
}

lass PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}
class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int paginaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SiteHeader(
              paginaAtual: paginaAtual,
              aoSelecionar: (pagina) => setState(() => paginaAtual = pagina),
            ),
            Expanded(
              child: paginaAtual == 0
                  ? HomePage(abrirCardapio: () => setState(() => paginaAtual = 1))
                  : const MenuPage(),
            ),
            const SiteFooter(),
          ],
        ),
      ),
    );
  }
}
