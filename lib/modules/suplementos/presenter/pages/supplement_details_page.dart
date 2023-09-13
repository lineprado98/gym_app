import 'package:flutter/material.dart';
import 'package:gym/modules/suplementos/domain/entities/product.dart';
import 'package:gym/modules/suplementos/presenter/widgets/item_nutricional.dart';

class SupplementDetails extends StatefulWidget {
  final ProductEntity product;
  const SupplementDetails({super.key, required this.product});

  @override
  State<SupplementDetails> createState() => _SupplementDetailsState();
}

class _SupplementDetailsState extends State<SupplementDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            children: [
              Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Color.fromARGB(255, 228, 230, 232),
                    image: DecorationImage(
                        scale: 0.2,
                        image: NetworkImage(
                            'https://acdn.mitiendanube.com/stores/821/582/products/88-cacau-new-s1-53164d7cf9093e003416787990452907-480-0.jpg'))),
              ),
              const SizedBox(height: 28),
              const Text(
                'Informação Nutricional',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 28),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Energia',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700)),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('146 Kcal',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Porção',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            '20g',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              const ItemNutricional(
                porcao: '20 g',
                tipo: 'Proteínas',
                progress: 0.5,
              ),
              const ItemNutricional(
                porcao: '1,9 g',
                tipo: 'Carboidratos',
                progress: 0.2,
              ),
              const ItemNutricional(
                porcao: '65 mg',
                tipo: 'Sódio',
                progress: 0.6,
              ),
              const ItemNutricional(
                porcao: '0 g',
                tipo: 'Gorduras Totais',
                progress: 0.0,
              )
            ],
          ),
        ));
  }
}
