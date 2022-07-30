import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_app/theme/app_theme.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const _AmberBox(),
          const _HeaderIcon(),
          this.child,
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                child: const Icon(
                  Icons.pets,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              const Text(
                'PET APP',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _AmberBox extends StatelessWidget {
  const _AmberBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      color: AppTheme.primary,
    );
  }
}
