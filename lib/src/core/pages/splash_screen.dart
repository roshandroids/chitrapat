import 'package:chitrapat/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _determineNavigation();
    super.initState();
  }

  Future<void> _determineNavigation() async {
    // return context.go(AppRoutes.loginRoute.path);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).coreBlue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height / 15),
              EntranceFader(
                duration: const Duration(milliseconds: 300),
                delay: const Duration(milliseconds: 100),
                child: SvgPicture.asset(AppAssets.appLogo),
              ),
              const SizedBox(
                height: 10,
              ),
              EntranceFader(
                duration: const Duration(milliseconds: 300),
                delay: const Duration(milliseconds: 300),
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                    children: [
                      TextSpan(
                          text: 'Chitrapat',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).coreWhite)),
                      TextSpan(
                        text: ' - ',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Theme.of(context).coreWhite),
                      ),
                      TextSpan(
                        text: '4K Walpapers',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).coreWhite),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width / 6),
                child: LinearProgressIndicator(
                  value: .25,
                  color: Theme.of(context).coreWhite,
                  backgroundColor: Theme.of(context).coreGrey,
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              EntranceFader(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).coreGrey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                  height: size.height / 5,
                  width: size.width,
                  child: Text(
                    'Native Ad',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).coreWhite.withOpacity(.5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
