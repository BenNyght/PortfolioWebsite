import 'package:benjamin_portfolio/app_constants.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.scale,
    required this.spacing,
    this.maxContentWidth = 1000,
  }) : super(key: key);

  final double scale;
  final double spacing;
  final double maxContentWidth;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxContentWidth),
        child: ListView(
          // let the surrounding Sliver supply the scroll physics/extent
          padding: EdgeInsets.all(spacing),
          shrinkWrap: true,
          children: [
            //////////////////////////////////////////////////////////////////////////
            // HEADER (name, title, contact)
            //////////////////////////////////////////////////////////////////////////
            SelectableText(
              AppStrings.name,
              style: textTheme.headlineMedium?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 32 * scale.clamp(1.0, 1.4),
              ),
            ),
            const SizedBox(height: 4),
            SelectableText(
              AppStrings.title,
              style: textTheme.titleMedium?.copyWith(
                color: Colors.white70,
                fontSize: 20 * scale.clamp(1.0, 1.2),
              ),
            ),
            SizedBox(height: spacing),
            // CONTACT ROW
            Row(
              children: [
                Icon(Icons.email_outlined,
                    color: Colors.white60,
                    size: 16 * scale.clamp(1.0, 1.4)),
                const SizedBox(width: 4),
                SelectableText(
                  AppStrings.email,
                  style: const TextStyle(height: 1.5, color: Colors.white70),
                ),
                const SizedBox(width: 10),
                Icon(Icons.location_on,
                    color: Colors.white60,
                    size: 16 * scale.clamp(1.0, 1.4)),
                const SizedBox(width: 4),
                SelectableText(
                  AppStrings.location,
                  style: const TextStyle(height: 1.5, color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // SUMMARY
            SelectableText(
              'Benjamin Finlay is a game systems/architecture engineer. '
              'With previous experience as a gameplay, UI, and build engineer.',
              style: const TextStyle(height: 1.5, color: Colors.white70),
            ),
            SizedBox(height: spacing * 2),

            //////////////////////////////////////////////////////////////////////////
            // SKILLS
            //////////////////////////////////////////////////////////////////////////
            SelectableText(
              'SKILLS',
              style: textTheme.headlineSmall?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 16),

            // Languages
            _SkillCategory(
              heading: 'Languages',
              chipColor: AppColors.chipBackground1,
              skills: const [
                'C#', 
                'C++', 
                'Kotlin (TeamCity)'
              ],
            ),
            const SizedBox(height: 12),
            // Technologies
            _SkillCategory(
              heading: 'Technologies',
              chipColor: AppColors.chipBackground2,
              skills: const [
                'PC & Console',
                'Extended Reality (VR/MR/AR)',
                'Mobile',
              ],
            ),
            const SizedBox(height: 12),
            // Engine
            _SkillCategory(
              heading: 'Engines',
              chipColor: AppColors.chipBackground3,
              skills: const [
                'Unity',
                'Unreal Engine',
                'Proprietary / Native',
              ],
            ),
            SizedBox(height: spacing * 2),

            //////////////////////////////////////////////////////////////////////////
            // EXPERIENCE
            //////////////////////////////////////////////////////////////////////////
            SelectableText(
              'EXPERIENCE',
              style: textTheme.headlineSmall?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectableText(
                  'PlaySide Studios',
                  style: textTheme.titleLarge?.copyWith(color: Colors.white70, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _ExperienceEntry(
              dateRange: 'Jul 2024 — Present',
              company: 'PlaySide Studios',
              position: 'Software Engineer III',
              responsibilities: [
                'Developing underlying systems and architecture for an Shattered (MR/VR).',
                'Working as a build and test automation engineer for Civilization 7 VR',
                'Supporting junior staff in implementing gameplay features.',
                'Developing systems and tooling for Mouse: PI For Hire Work with Fumi Games'
              ],
            ),
            const SizedBox(height: 24),
            _ExperienceEntry(
              dateRange: 'Mar 2023 — Jul 2024',
              company: 'PlaySide Studios',
              position: 'Software Engineer II',
              responsibilities: [
                'Developed core mechanics and systems for Shiba Eternity, Shattered (MR/VR) and other unreleased titles.',
                'Developed company core tech for Mixed Reality, Benchmarking, and VO/Audio Pipelines'
              ],
            ),
            const SizedBox(height: 24),
            _ExperienceEntry(
              dateRange: 'Jun 2019 — Mar 2023',
              company: 'PlaySide Studios',
              position: 'Associate Software Engineer',
              responsibilities: [
                'Contributed to titles such as Shiba Eternity and Fishy Bits 2.',
                'Regularly handled debugging, feature development, performance tuning, and multidisciplinary collaboration.',
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectableText(
                  'USC CIDSEL',
                  style: textTheme.titleLarge?.copyWith(color: Colors.white70, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _ExperienceEntry(
              dateRange: 'Jun 2020 — Jan 2021',
              position: 'Programmer & Technical Consultant',
              company: 'USC CIDSEL',
              responsibilities: [
                'Provided technology support in program design and delivery for executive education and development projects.',
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectableText(
                  'University of the Sunshine Coast',
                  style: textTheme.titleLarge?.copyWith(color: Colors.white70, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _ExperienceEntry(
              dateRange: 'Jun 2019 — Jan 2022',
              position: 'Programmer & VR Developer',
              company: 'University of the Sunshine Coast',
              responsibilities: [
                'Collaborated with the Engage Research Lab to deliver research projects for clients such as the Endeavour Foundation and the Mary Cairncross Scenic Reserve.',
              ],
            ),
            const SizedBox(height: 24),
            _ExperienceEntry(
              dateRange: 'Jul 2019 — Jan 2021',
              position: 'Esports Manager',
              company: 'University of the Sunshine Coast',
              responsibilities: [
                'Cultivated the esports brand by event planning, networking with other universities, and engaging the campus community.',
              ],
            ),
            SizedBox(height: spacing * 2),

            //////////////////////////////////////////////////////////////////////////
            // EDUCATION
            //////////////////////////////////////////////////////////////////////////
            SelectableText(
              'EDUCATION',
              style: textTheme.headlineSmall?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectableText(
                  'University of the Sunshine Coast',
                  style: textTheme.titleLarge?.copyWith(color: Colors.white70, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _EducationEntry(
              date: 'Nov 2021',
              location: 'Sunshine Coast, QLD',
              degree: 'Bachelor of Creative Industries (Honours)',
              institution: 'University of the Sunshine Coast',
              details: 'Specializing in Adaptive Level Generation (Honours Class I)',
            ),
            const SizedBox(height: 24),
            _EducationEntry(
              date: 'Jul 2020',
              location: 'Sunshine Coast, QLD',
              degree: 'Bachelor of Serious Games',
              institution: 'University of the Sunshine Coast',
              details: 'Minor in Games Programming, Game Art, and Software Development',
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

/// Helper widget for a skills category (e.g. Languages, Tools) followed by chips.
class _SkillCategory extends StatelessWidget {
  const _SkillCategory({required this.heading, required this.skills, required this.chipColor});

  final String heading;
  final Color chipColor;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$heading:',
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final s in skills) _SkillChip(s, chipColor),
          ],
        ),
      ],
    );
  }
}

class _SkillChip extends StatelessWidget {
  const _SkillChip(this.label, this.chipColor);

  final String label;
  final Color chipColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: chipColor,
      labelStyle: const TextStyle(color: AppColors.chipText),
    );
  }
}

class _ExperienceEntry extends StatelessWidget {
  const _ExperienceEntry({
    required this.dateRange,
    this.location,
    required this.position,
    this.company,
    required this.responsibilities,
    Key? key,
  }) : super(key: key);

  final String dateRange;
  final String? location;
  final String position;
  final String? company;
  final List<String> responsibilities;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            dateRange,
            style: t.bodySmall
                ?.copyWith(color: Colors.white70, fontWeight: FontWeight.w600),
          ),
      
          // only show location if provided
          if (location?.isNotEmpty ?? false) ...[
            SelectableText(
              location!,
              style: t.bodySmall?.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 4),
          ],
      
          SelectableText(
            '$position at $company',
            style: t.titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          ...responsibilities.map((r) => Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SelectableText(
                  '• $r',
                  style: const TextStyle(height: 1.5, color: Colors.white70),
                ),
              )),
        ],
      ),
    );
  }
}

class _EducationEntry extends StatelessWidget {
  const _EducationEntry({
    required this.date,
    required this.location,
    required this.degree,
    required this.institution,
    required this.details,
  });

  final String date;
  final String location;
  final String degree;
  final String institution;
  final String details;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: textTheme.bodySmall?.copyWith(
              color: Colors.white70,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            location,
            style: textTheme.bodySmall?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 4),
          Text(
            '$degree at $institution',
            style: textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            details,
            style: const TextStyle(height: 1.5, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
