import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gym/core/service_locator.dart';
import 'package:gym/modules/suplementos/presenter/pages/supplement_details_page.dart';
import 'package:gym/modules/suplementos/presenter/store/suplementos_store.dart';

class SuplementosPage extends StatefulWidget {
  const SuplementosPage({super.key});

  @override
  State<SuplementosPage> createState() => _SuplementosPageState();
}

class _SuplementosPageState extends State<SuplementosPage> {
  final usecase = getIt<SuplementosStore>();
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      get();
    });
  }

  Future<void> get() async {
    await usecase.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 110,
          toolbarHeight: 100,
          centerTitle: false,
          leading: Padding(
            padding: EdgeInsets.only(left: 32, right: 16),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://postcron.com/pt/blog/wp-content/uploads/2016/05/foto-de-perfil-para-trabalho.jpg',
                  scale: 6),
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Olá,',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Text(
                'Aline Prado ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 32),
              child: Icon(
                Icons.logout,
                size: 32,
              ),
            )
          ],
        ),
        body: Center(
          child: Observer(builder: (context) {
            return usecase.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: usecase.res.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0.2),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          subtitleTextStyle: TextStyle(
                              color: Colors.grey.shade100,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          titleTextStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                          tileColor: Colors.grey.shade800,
                          title: Text(usecase.res[index].name.toString()),
                          subtitle: Text(usecase.res[index].category),
                          leading: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.network(
                                usecase.res[index].imageLink.toString()),
                          ),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SupplementDetails(
                                    product: usecase.res[index]),
                              )),
                          trailing: Icon(
                            Icons.navigate_next_rounded,
                            size: 40,
                          ),
                        ),
                      );
                    });
          }),
        ));
  }
}
