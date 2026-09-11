import 'package:flutter/material.dart';

import '../../components/typography/typography_factory.dart';
import '../../components/typography/typography_viewmodel.dart';

class SampleTypographyScreen extends StatelessWidget {
  const SampleTypographyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F7FB),

        elevation: 0,

        title: const Text(
          'Typography',
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sample(
              name: 'Large Title / Bold',
              information: '32 / 40   -0.75 px',
              type: TypographyType.largeTitleBold,
            ),

            _sample(
              name: 'Title 1 / Bold',
              information: '20 / 24   -0.35 px',
              type: TypographyType.title1Bold,
            ),

            _sample(
              name: 'Title 2 / Regular',
              information: '17 / 24   -0.45 px',
              type: TypographyType.title2Regular,
            ),

            _sample(
              name: 'Title 2 / Medium',
              information: '17 / 24   -0.35 px',
              type: TypographyType.title2Medium,
            ),

            _sample(
              name: 'Title 2 / Semibold',
              information: '17 / 24   -0.30 px',
              type: TypographyType.title2Semibold,
            ),

            _sample(
              name: 'Title 2 / Bold',
              information: '17 / 24   -0.20 px',
              type: TypographyType.title2Bold,
            ),

            _sample(
              name: 'Headline / Regular',
              information: '16 / 20   -0.35 px',
              type: TypographyType.headlineRegular,
            ),

            _sample(
              name: 'Headline / Medium',
              information: '16 / 20   -0.25 px',
              type: TypographyType.headlineMedium,
            ),

            _sample(
              name: 'Text / Regular',
              information: '15 / 20   -0.30 px',
              type: TypographyType.textRegular,
            ),

            _sample(
              name: 'Text / Medium',
              information: '15 / 20   -0.20 px',
              type: TypographyType.textMedium,
            ),

            _sample(
              name: 'Text / Semibold',
              information: '15 / 20   -0.15 px',
              type: TypographyType.textSemibold,
            ),

            _sample(
              name: 'Subhead / Regular',
              information: '14 / 20   -0.20 px',
              type: TypographyType.subheadRegular,
            ),

            _sample(
              name: 'Subhead / Medium',
              information: '14 / 20   -0.10 px',
              type: TypographyType.subheadMedium,
            ),

            _sample(
              name: 'Subhead / Semibold',
              information: '14 / 20   -0.05 px',
              type: TypographyType.subheadSemibold,
            ),

            _sample(
              name: 'Caption 1 / Regular',
              information: '13 / 16   -0.10 px',
              type: TypographyType.caption1Regular,
            ),

            _sample(
              name: 'Caption 1 / Medium',
              information: '13 / 16   -0.05 px',
              type: TypographyType.caption1Medium,
            ),

            _sample(
              name: 'Caption 1 / Semibold',
              information: '13 / 16   0 px',
              type: TypographyType.caption1Semibold,
            ),

            _sample(
              name: 'Caption 2 / Medium',
              information: '12 / 16   0.05 px',
              type: TypographyType.caption2Medium,
            ),

            _sample(
              name: 'Caption 2 / Semibold',
              information: '12 / 16   0.10 px',
              type: TypographyType.caption2Semibold,
            ),

            _sample(
              name: 'Caption 3 / Semibold',
              information: '11 / 16   0.15 px',
              type: TypographyType.caption3Semibold,
            ),
          ],
        ),
      ),
    );
  }

  Widget _sample({
    required String name,
    required String information,
    required TypographyType type,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TypographyFactory.create(
            text: name,
            type: type,
          ),

          const SizedBox(height: 5),

          Text(
            information,

            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }
}