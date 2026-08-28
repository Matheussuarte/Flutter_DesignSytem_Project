import 'package:flutter/material.dart';

import 'app_button.dart';
import 'button_factory.dart';
import 'button_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ButtonType selectedType = ButtonType.primary;

  void selectButton(ButtonType type) {
    setState(() {
      selectedType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppButton previewButton = ButtonFactory.create(
      type: selectedType,
      onPressed: () {
        print('Preview clicado');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Design System'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'Escolha um botão',
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    selectButton(ButtonType.primary);
                  },
                  child: const Text('Primary'),
                ),

                TextButton(
                  onPressed: () {
                    selectButton(ButtonType.secondary);
                  },
                  child: const Text('Secondary'),
                ),

                TextButton(
                  onPressed: () {
                    selectButton(ButtonType.danger);
                  },
                  child: const Text('Danger'),
                ),
              ],
            ),

            const SizedBox(height: 60),

            const Text(
              'Preview',
            ),

            const SizedBox(height: 30),

            previewButton,
          ],
        ),
      ),
    );
  }
}