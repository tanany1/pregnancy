import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> weekData = [
    {
      'week': '4',
      'babyInfo': 'A ball of cells called a blastocyst has officially become an embryo, roughly the size of a poppy seed. This is when organ development begins, lasting approximately six weeks.',
      'lifeAdvice': 'Start taking prenatal vitamins with folic acid to support early development. Focus on a healthy diet and avoid alcohol or smoking to ensure a strong start for your baby.'
    },
    {
      'week': '5',
      'babyInfo': 'The baby’s heart begins to beat, generally at about twice the rate of an adult heart.',
      'lifeAdvice': 'Schedule your first prenatal appointment to confirm your pregnancy. Rest often to manage early fatigue, and eat small, frequent meals to ease nausea.'
    },
    {
      'week': '6',
      'babyInfo': 'Facial features begin to form, and little buds for the arms and legs start to develop.',
      'lifeAdvice': 'Stay hydrated and get plenty of rest to support your body’s changes. Begin tracking your symptoms and share them with your doctor at your next visit.'
    },
    {
      'week': '10',
      'babyInfo': 'The embryo officially becomes a fetus. Organs like kidneys, intestines, brain, and liver are beginning to function, and fingernails and toenails are starting to form.',
      'lifeAdvice': 'Focus on a balanced diet rich in protein and iron to support organ development. Avoid stress by practicing relaxation techniques like deep breathing or meditation.'
    },
    {
      'week': '12',
      'babyInfo': 'You’ll likely be able to hear the baby’s heartbeat at a prenatal checkup, though this may have already happened at an ultrasound.',
      'lifeAdvice': 'Celebrate hearing your baby’s heartbeat by sharing the moment with loved ones. Continue prenatal care and start planning for your second trimester needs.'
    },
    {
      'week': '14',
      'babyInfo': 'The baby’s kidneys are producing urine that’s released into the amniotic fluid. The baby can make facial expressions and may begin sucking his or her thumb.',
      'lifeAdvice': 'Enjoy your increased energy by taking short walks or trying prenatal yoga. Stay hydrated to support amniotic fluid production and manage any headaches.'
    },
    {
      'week': '16',
      'babyInfo': 'The baby’s gender might be detectable at a mid-pregnancy ultrasound, which is generally done between 16 and 20 weeks into pregnancy.',
      'lifeAdvice': 'Prepare for your mid-pregnancy ultrasound by drinking plenty of water for clearer images. Start thinking about baby names if you learn the gender!'
    },
    {
      'week': '18',
      'babyInfo': 'If you haven’t already felt the baby moving around in the womb, you likely will around this time. Within a couple weeks after that, other people should be able to feel baby movements from outside your stomach.',
      'lifeAdvice': 'Bond with your baby by talking or singing to them as they start to feel your movements. Schedule your mid-pregnancy checkup to monitor your progress.'
    },
    {
      'week': '19',
      'babyInfo': 'The baby\'s sense of motion has developed, and hearing continues to improve. The baby can make facial expressions and may begin sucking his or her thumb.',
      'lifeAdvice': 'Focus on a nutrient-rich diet with plenty of fruits and vegetables to support your baby’s growth. Consider joining a prenatal class to connect with other expectant parents.'
    },
    {
      'week': '20',
      'babyInfo': 'The baby\'s gender might be detectable at a mid-pregnancy ultrasound. Taste buds are developing, and both the brain and hair should be growing quickly.',
      'lifeAdvice': 'Stay hydrated and get plenty of rest to support your growing belly. Start planning for your baby’s arrival by researching maternity leave options.'
    },
    {
      'week': '21',
      'babyInfo': 'Those little butterfly feelings develop into kicks and thumps! Your baby may have a definite pattern of activity. Length 14-16 cm | weight 250g. Facial features are becoming more recognizable with growing eyebrows and eyelashes.',
      'lifeAdvice': 'Manage stress with light activities like prenatal yoga or meditation. Begin reading about labor and delivery to feel prepared for the next stages.'
    },
    {
      'week': '22',
      'babyInfo': 'The baby\'s lungs are developing quickly, though they won’t be functional for a few more weeks. The baby will inhale and exhale amniotic fluid and has begun sleeping and waking at regular intervals.',
      'lifeAdvice': 'Focus on a balanced diet and start gathering newborn essentials like diapers and clothes. Take time to relax and bond with your baby through their movements.'
    },
    {
      'week': '23',
      'babyInfo': 'The baby\'s sense of motion has developed, and hearing continues to improve. The baby may weigh just over a pound and be up to a foot long.',
      'lifeAdvice': 'Stay active with gentle prenatal exercises, but avoid overexertion. Connect with other expectant mothers for support and to share experiences.'
    },
    {
      'week': '24',
      'babyInfo': 'Taste buds are developing, and both the brain and hair should be growing quickly. The baby may weigh just over a pound and be up to a foot long.',
      'lifeAdvice': 'Ensure you’re getting enough sleep and hydration to support your baby’s rapid growth. Consider attending a prenatal class to learn about newborn care.'
    },
    {
      'week': '27',
      'babyInfo': 'Though the lungs won’t be functional for a few more weeks, they are developing quickly. The baby will inhale and exhale amniotic fluid, begin sleeping and waking at regular intervals, and may open and close eyes and suck fingers.',
      'lifeAdvice': 'Prepare for more frequent doctor visits to monitor your baby’s development. Start packing a hospital bag with essentials for labor day.'
    },
    {
      'week': '28',
      'babyInfo': 'The baby may begin dreaming, and will have eyelashes and improved eyesight. The baby will also grow fingernails and toenails and may begin to increase in weight—up to over three pounds.',
      'lifeAdvice': 'Stay active with gentle movements to prepare for labor. Begin discussing your birth plan with your healthcare provider to ensure a smooth delivery.'
    },
    {
      'week': '32',
      'babyInfo': 'The baby continues to grow, reaching nearly four pounds, with improved eyesight and longer fingernails and toenails.',
      'lifeAdvice': 'Attend regular check-ups to monitor your baby’s growth. Rest often to manage any discomfort from Braxton-Hicks contractions and prepare for labor.'
    },
    {
      'week': '34',
      'babyInfo': 'The baby’s lungs and central nervous system continue to develop, and skin is becoming soft and smooth.',
      'lifeAdvice': 'Focus on relaxation techniques to manage any stress as you near delivery. Ensure your hospital bag is ready and review your birth plan with your doctor.'
    },
    {
      'week': '37',
      'babyInfo': 'At this point, your baby is considered “early term.” Babies born at this time usually do well, but in an ideal situation, birth won’t take place for a few more weeks to allow the brain and lungs time to mature fully.',
      'lifeAdvice': 'Stay active with light walking to encourage labor readiness. Be prepared for delivery by keeping your support system informed and ready.'
    },
    {
      'week': '39',
      'babyInfo': 'The baby is now considered full-term and is ready for birth. Average weight is roughly 7.5 pounds, and the average length is about 20 inches.',
      'lifeAdvice': 'Rest as much as possible while awaiting labor. Ensure all baby essentials are ready at home, and stay in close contact with your healthcare provider.'
    },
    {
      'week': '41',
      'babyInfo': 'You’ve passed your due date, and the baby is now considered “late term.” Anything after 42 weeks is “post-term.” Baby health might be monitored with tests, and you may discuss inducing labor with your doctor.',
      'lifeAdvice': 'Attend monitoring appointments to ensure your baby’s health. Discuss induction options with your doctor and stay calm while awaiting labor.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[100]!, Colors.orange[50]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Your Pregnancy Journey',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[800]),
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 420.0,
                    viewportFraction: 0.80,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: weekData.map((data) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  color: Colors.pink[100],
                                  child: TabBar(
                                    indicatorColor: Colors.pink[800],
                                    labelColor: Colors.pink[800],
                                    unselectedLabelColor: Colors.grey[600],
                                    tabs: const [
                                      Tab(text: 'Your Baby'),
                                      Tab(text: 'Your Life'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      SingleChildScrollView(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Week ${data['week']}',
                                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[600]),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(data['babyInfo']!, style: const TextStyle(fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Week ${data['week']}',
                                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[600]),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(data['lifeAdvice']!, style: const TextStyle(fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}