import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String?>> monthData = [
    {
      'month': '1-2',
      'weeks': '1 to 8',
      'babyInfo': 'The egg is fertilized. The fertilized egg rapidly multiplies in the uterus. Weeks 5 to 8 bring the embryo stages of development. The neural tube begins to form (brain, followed by the spinal cord). Cardiac tissue starts to develop. Buds for the arms and legs appear. The face begins to take shape. Major organs begin to develop, the webbed fingers & toes appear. By the end of week 8, it will become the digits/hands and feet. The embryo is about 1/2 inch long.',
      'lifeAdvice': 'Nutrition: Focus on whole foods like fruits, vegetables, whole grains, lean proteins, and healthy fats. Avoid processed and sugary foods to prevent weight gain and support baby’s health. Get enough folic acid from leafy greens and citrus fruits to support fetal development.\n\nExercise: Continue your regular exercise routine, avoiding high-impact activities. Prenatal yoga can help with relaxation and strengthen labor muscles. Walking is a simple, beneficial exercise to maintain fitness.\n\nHealthcare: Schedule a doctor’s appointment to confirm pregnancy and discuss concerns. Regularly monitor your health and report unusual symptoms to your doctor.',
      'image': 'assets/1-2.jpg',
    },
    {
      'month': '3',
      'weeks': '9 to 12',
      'babyInfo': 'Cartilage for the limbs, hands, feet, fingers, & toes forms. The major internal organs are present. The eyelids close & will not reopen until about the 28th week. The external genitals develop. The fetus begins to make spontaneous movements. The fetus is about 2 1/2 inches long & weighs about 1/2 ounce.',
      'lifeAdvice': 'Nutrition: Include protein-rich foods like lean meats, fish, eggs, and legumes to support baby’s growth. Consume vitamin C-rich foods (citrus fruits, strawberries, bell peppers) for immune function and iron absorption. Limit caffeine to 200mg or less daily to reduce miscarriage risk.\n\nExercise: Engage in prenatal Pilates for core strength, flexibility, and posture. Swimming is a low-impact way to stay active and relaxed. Practice Kegel exercises to strengthen pelvic floor muscles.\n\nHealthcare: Discuss genetic testing options with your provider. Monitor blood pressure to ensure it stays in a healthy range. Report any concerns to your healthcare provider.\n\nMorning Sickness: If experiencing severe morning sickness, consult your provider for treatment options.',
      'image': null,
    },
    {
      'month': '4',
      'weeks': '13 to 16',
      'babyInfo': 'Sex may be visible on an ultrasound. The fetus begins to suck and swallow. Downy hair begins to develop. The fetus begins to move. The fetus is about 6 inches long & 4 ounces in weight.',
      'lifeAdvice': 'Nutrition: Eat iron-rich foods like lean meats, spinach, and fortified cereals to prevent anemia. Consume fiber-rich foods (whole grains, fruits, vegetables) to prevent constipation. Stay hydrated to support increased blood volume.\n\nExercise: Continue prenatal yoga for flexibility and balance. Regular walking boosts cardiovascular health. Practice pelvic tilts to strengthen core muscles.\n\nHealthcare: Schedule an anatomy scan (18-22 weeks) to monitor baby’s growth. Track weight gain to ensure it’s within a healthy range. Discuss your birth plan with your provider.\n\nQuickening: You may feel baby’s movements. If you have trouble feeling them, consult your provider.',
      'image': 'assets/4.jpg',
    },
    {
      'month': '5',
      'weeks': '17 to 20',
      'babyInfo': 'Hair, eyebrows, and eyelashes appear. The skin is covered with a waxy coating. The mother begins to feel the fetus move. The fetus is about 10 inches long & weighs about 1/2 to 1 pound.',
      'lifeAdvice': 'Nutrition: Include omega-3 rich foods like salmon, walnuts, and chia seeds for baby’s brain development. Consume calcium-rich foods (dairy, leafy greens, fortified plant-based milk) for bone growth. Avoid undercooked or raw foods to prevent foodborne illnesses.\n\nExercise: Continue prenatal Pilates for core strength and flexibility. Swimming keeps you active and comfortable. Practice Kegel exercises for pelvic floor strength.\n\nHealthcare: Schedule a glucose screening (24-28 weeks) to check for gestational diabetes. Monitor baby’s movements and report concerns. Attend childbirth classes and build a support network.',
      'image': null,
    },
    {
      'month': '6',
      'weeks': '21 to 24',
      'babyInfo': 'The skin looks wrinkled. The fetus may hiccup. The eyes begin to open. Finger and toe prints are visible. The fetus is about 12 inches long & weighs about 1 1/2 pounds.',
      'lifeAdvice': 'Nutrition: Eat vitamin C-rich foods (citrus fruits, strawberries, bell peppers) for immune system support. Consume protein-rich foods (lean meats, fish, legumes) for growth. Stay hydrated to support blood volume.\n\nExercise: Continue prenatal yoga for flexibility and breathing techniques. Regular walking boosts energy. Practice pelvic floor exercises for childbirth preparation.\n\nHealthcare: Schedule regular check-ups to monitor baby’s growth. Discuss pain management options for childbirth. Start preparing your nursery with essential items.\n\nBaby’s Development: Lungs are maturing, and baby is practicing breathing movements. Skin thickens, and fat layers form.',
      'image': 'assets/6.jpg',
    },
    {
      'month': '7',
      'weeks': '25 to 28',
      'babyInfo': 'The fetus is very active. The fetus responds to sound. The eyes can open & shut. The fetus is about 14 inches long & weighs about 2 1/2 pounds.',
      'lifeAdvice': 'Nutrition: Eat iron-rich foods (lean meats, spinach, fortified cereals) to prevent anemia. Include omega-6 rich foods (sunflower seeds, pumpkin seeds) for skin and brain development. Stay hydrated.\n\nExercise: Continue prenatal Pilates for flexibility and posture. Swimming keeps you relaxed. Practice breathing exercises for childbirth and stress management.\n\nHealthcare: Schedule regular check-ups to monitor growth. Finalize your birth plan. Prepare for breastfeeding by learning about lactation.\n\nBaby’s Development: Brain develops rapidly, and baby practices sucking and swallowing. Skin thickens, and fat layers form.',
      'image': null,
    },
    {
      'month': '8',
      'weeks': '29 to 32',
      'babyInfo': 'The fetus gains weight rapidly. Bones harden except for the skull. The different regions of the brain form. The fetus is about 18 inches long & weighs about 4 pounds.',
      'lifeAdvice': 'Nutrition: Eat fiber-rich foods (whole grains, fruits, vegetables) to prevent constipation. Consume calcium-rich foods (dairy, leafy greens) for bone growth. Stay hydrated.\n\nExercise: Consider prenatal massage to reduce stress and improve circulation. Practice Kegel exercises for pelvic floor strength. Take short walks to stay active.\n\nHealthcare: Schedule regular check-ups to monitor growth. Finalize your birth plan. Attend parenting classes and build a support network.\n\nBaby’s Development: Lungs are almost fully developed, and baby gains weight rapidly. Skin thickens, and fat layers form.',
      'image': 'assets/8.jpg',
    },
    {
      'month': '9',
      'weeks': '33 to 36',
      'babyInfo': 'The lungs are nearly mature. The fetus continues to gain weight. The fetus usually moves to a head-down position. The fetus is about 19 inches long & weighs more than 5 pounds.',
      'lifeAdvice': 'Nutrition: Eat omega-3 rich foods (salmon, walnuts) for brain development. Stay hydrated. Stock up on nutritious foods for postpartum recovery.\n\nExercise: Practice prenatal yoga for relaxation and childbirth preparation. Continue breathing exercises to manage stress. Prioritize rest to conserve energy.\n\nHealthcare: Schedule regular check-ups to monitor growth. Finalize your birth plan and attend childbirth classes. Plan for postpartum care, including breastfeeding support.\n\nBaby’s Development: Baby is fully developed and ready for birth, gaining weight and preparing for life outside the womb.',
      'image': null,
    },
    {
      'month': '10',
      'weeks': '37 to 40',
      'babyInfo': 'The fetus continues to gain weight. The lungs are mature. The fetus is about 20 inches long & weighs about 6 to 9 pounds.',
      'lifeAdvice': 'Nutrition: Eat omega-3 rich foods (salmon, walnuts) for brain development. Stay hydrated. Stock up on nutritious foods for postpartum recovery.\n\nExercise: Practice prenatal yoga for relaxation and childbirth preparation. Continue breathing exercises to manage stress. Prioritize rest to conserve energy.\n\nHealthcare: Schedule regular check-ups to monitor growth. Finalize your birth plan and attend childbirth classes. Plan for postpartum care, including breastfeeding support.',
      'image': null,
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
                  items: monthData.map((data) {
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
                                      Tab(text: 'Your Life'),
                                      Tab(text: 'Your Baby'),
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
                                              'Month ${data['month']} (Weeks ${data['weeks']})',
                                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[600]),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(data['lifeAdvice']!, style: const TextStyle(fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Month ${data['month']} (Weeks ${data['weeks']})',
                                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[600]),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(data['babyInfo']!, style: const TextStyle(fontSize: 16)),
                                            const SizedBox(height: 10),
                                            if (data['image'] != null)
                                              Image.asset(
                                                data['image']!,
                                                height: 150,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
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