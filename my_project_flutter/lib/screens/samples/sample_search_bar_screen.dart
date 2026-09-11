import 'package:flutter/material.dart';

import '../../components/search_bar/search_bar_factory.dart';
import '../../components/search_bar/search_bar_viewmodel.dart';

import '../../components/typography/typography_factory.dart';
import '../../components/typography/typography_viewmodel.dart';

class SampleSearchBarScreen extends StatelessWidget {
  const SampleSearchBarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      appBar: AppBar(
        title: const Text(
          'Search Bar',
        ),

        backgroundColor: Colors.white,

        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TypographyFactory.create(
              text: 'Search Bar',
              type: TypographyType.largeTitleBold,
            ),

            const SizedBox(height: 8),

            TypographyFactory.create(
              text:
              'Variações do componente de pesquisa utilizado no Design System.',
              type: TypographyType.textRegular,
            ),

            const SizedBox(height: 32),

            _title('Standard'),

            const SizedBox(height: 10),

            SearchBarFactory.create(
              hintText: 'Search Here',
              type: SearchBarType.standard,
            ),

            const SizedBox(height: 32),

            _title('Active'),

            const SizedBox(height: 10),

            SearchBarFactory.create(
              hintText: 'Search Here',
              type: SearchBarType.active,
            ),

            const SizedBox(height: 32),

            _title('Filled'),

            const SizedBox(height: 10),

            SearchBarFactory.create(
              hintText: 'Search Here',
              initialText: 'Flutter',
              type: SearchBarType.filled,
            ),

            const SizedBox(height: 32),

            _title('Disabled'),

            const SizedBox(height: 10),

            SearchBarFactory.create(
              hintText: 'Search Here',
              type: SearchBarType.disabled,
            ),

            const SizedBox(height: 40),

            _buildSpecifications(),
          ],
        ),
      ),
    );
  }

  Widget _title(String text) {
    return TypographyFactory.create(
      text: text,
      type: TypographyType.title2Semibold,
    );
  }

  Widget _buildSpecifications() {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16),

        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
      ),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Specifications',

            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 16),

          SpecificationRow(
            property: 'Height',
            value: '48 px',
          ),

          SpecificationRow(
            property: 'Border Radius',
            value: '18 px',
          ),

          SpecificationRow(
            property: 'Horizontal Padding',
            value: '16 px',
          ),

          SpecificationRow(
            property: 'Icon Size',
            value: '22 px',
          ),

          SpecificationRow(
            property: 'Font Size',
            value: '15 px',
          ),
        ],
      ),
    );
  }
}

class SpecificationRow extends StatelessWidget {
  final String property;

  final String value;

  const SpecificationRow({
    super.key,
    required this.property,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),

      child: Row(
        children: [
          Expanded(
            child: Text(
              property,

              style: const TextStyle(
                color: Color(0xFF64748B),
              ),
            ),
          ),

          Text(
            value,

            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}