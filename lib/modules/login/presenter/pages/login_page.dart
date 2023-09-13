import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym/core/utils/app_assets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(
          children: [
            BackgroundImage(),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.logo,
                        width: 60,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Ignite Gym',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Text(
                    'Treine sua mente e o seu corpo',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'E-mail',
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Remove a borda
                        borderRadius: BorderRadius.all(Radius.circular(
                            10.0)), // Define a borda arredondada
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Senha',
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Remove a borda
                        borderRadius: BorderRadius.all(Radius.circular(
                            10.0)), // Define a borda arredondada
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Acessar',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                        fixedSize: MaterialStateProperty.all(Size(460, 60)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 9, 130, 13))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/fundoLogin.png',
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          colorBlendMode: BlendMode.darken,
          color: Colors.black26,
        ),

        Positioned(
          bottom: 0,
          left: 1,
          right: 1,
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black12, Colors.black]),
            ),
          ),
        )
        // Add other widgets on top of the background image here
      ],
    );
  }
}
