import 'package:flutter/material.dart';
import 'env_config.dart';

void mainCommon() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: EnvConfig.appName,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        if (EnvConfig.isProduction) return child!;
        return Stack(
          children: [
            child!,
            _buildEnvironmentBanner(),
          ],
        );
      },
      home: Scaffold(
        appBar: AppBar(title: Text(EnvConfig.appName)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Flavor: ${EnvConfig.flavorEnv}"),
              Text("API: ${EnvConfig.apiBaseUrl}"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEnvironmentBanner() {
    return Positioned(
      top: 0,
      right: 0,
      child: Banner(
        message: EnvConfig.bannerText,
        location: BannerLocation.topEnd,
        color: EnvConfig.bannerColor,
        textStyle: const TextStyle(
          fontSize: 12, 
          fontWeight: FontWeight.bold, 
          color: Colors.white
        ),
      ),
    );
  }
}