import 'package:flutter/material.dart';

class MedicationScreen extends StatelessWidget {
  final List<Map<String, String>> medications = [
    {
      'name': 'Dydrogesterone (Duphaston)',
      'purpose': 'Support endometrium progesterone deficiency',
      'dosage': '10 mg 2–3 times daily',
      'administration': 'Oral',
      'notes': 'Safe up to week 12'
    },
    {
      'name': 'Progesterone (Crinone, Utrogestan)',
      'purpose': 'Hormonal support, luteal phase defect',
      'dosage': '200–400 mg vaginally/orally daily',
      'administration': 'Vaginal route is more effective',
      'notes': ''
    },
    {
      'name': 'Hydroxyprogesterone (Proluton Depot)',
      'purpose': 'Prevent preterm labor',
      'dosage': '250 mg IM weekly (from week 16 to 36)',
      'administration': 'Intramuscular',
      'notes': 'Used in specific high-risk cases'
    },
    {
      'name': 'HCG Injections (Choriomon, Pregnyl)',
      'purpose': 'Stimulate corpus luteum',
      'dosage': '5000–10000 IU every 3–5 days',
      'administration': '',
      'notes': 'Requires hormone monitoring'
    },
    {
      'name': 'Low-dose Aspirin (Baby aspirin)',
      'purpose': 'Improve placental blood flow',
      'dosage': '75–100 mg once daily',
      'administration': 'Oral',
      'notes': 'Usually stopped by mid-pregnancy'
    },
    {
      'name': 'Heparin/Enoxaparin (Clexane)',
      'purpose': 'Prevent clotting in thrombophilia',
      'dosage': '20–40 mg subcutaneously daily',
      'administration': '',
      'notes': 'Strictly under doctor supervision'
    },
    {
      'name': 'Folic Acid',
      'purpose': 'Prevent neural tube defects',
      'dosage': '400–800 mcg/day (up to 5 mg in special cases)',
      'administration': 'Oral',
      'notes': 'Used from preconception to end of 1st trimester'
    },
    {
      'name': 'Iron (Ferrous sulfate)',
      'purpose': 'Anemia prevention',
      'dosage': '30-60 mg elemental iron/day',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Calcium',
      'purpose': 'Bone support',
      'dosage': '1000-1200 mg daily',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Vitamin D',
      'purpose': 'Bone health',
      'dosage': '400-1000 IU daily',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Paracetamol (Acetaminophen)',
      'purpose': 'Pain, fever',
      'dosage': '500–1000 mg every 4–6 hours (max 4g/day)',
      'administration': 'Oral',
      'notes': 'Safe (all trimesters)'
    },
    {
      'name': 'Loratadine (Claritin)',
      'purpose': 'Allergies',
      'dosage': '10 mg once daily',
      'administration': 'Oral',
      'notes': 'Safe (Category B)'
    },
    {
      'name': 'Cetirizine (Zyrtec)',
      'purpose': 'Allergies',
      'dosage': '10 mg once daily',
      'administration': 'Oral',
      'notes': 'Safe (Category B)'
    },
    {
      'name': 'Diphenhydramine (Benadryl)',
      'purpose': 'Allergies, sleep',
      'dosage': '25–50 mg every 6 hours',
      'administration': 'Oral',
      'notes': 'Use with caution'
    },
    {
      'name': 'Pyridoxine (Vitamin B6)',
      'purpose': 'Morning sickness',
      'dosage': '10–25 mg 3 times daily',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Doxylamine + B6 (Diclegis)',
      'purpose': 'Severe nausea',
      'dosage': '10 mg/10 mg at bedtime (adjust as needed)',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Dextromethorphan',
      'purpose': 'Cough suppressant',
      'dosage': '10–20 mg every 4–6 hours',
      'administration': 'Oral',
      'notes': 'Likely safe'
    },
    {
      'name': 'Guaifenesin',
      'purpose': 'Expectorant',
      'dosage': '200–400 mg every 4 hours',
      'administration': 'Oral',
      'notes': 'Avoid 1st trimester'
    },
    {
      'name': 'Ranitidine (Zantac)',
      'purpose': 'GERD, acid reflux',
      'dosage': '75–150 mg once or twice daily',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Antacids (Tums)',
      'purpose': 'Heartburn',
      'dosage': '2–4 tablets as needed (max 7/day)',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Calcium (Tums®, Mylanta®, Maalox®)',
      'purpose': 'Heartburn',
      'dosage': '',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Simethicone (Mylicon® or Gas-X®)',
      'purpose': 'Gas',
      'dosage': '',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Famotidine (Pepcid®)',
      'purpose': 'Heartburn',
      'dosage': '',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Topical phenylephrine hemorrhoidal gel (Preparation H® or Anusol®)',
      'purpose': 'Hemorrhoids',
      'dosage': '',
      'administration': 'Topical',
      'notes': ''
    },
    {
      'name': 'Witch hazel pads',
      'purpose': 'Hemorrhoids',
      'dosage': '',
      'administration': 'Topical',
      'notes': ''
    },
    {
      'name': 'Docusate Sodium (Colace)',
      'purpose': 'Constipation, stool softener',
      'dosage': '50–100 mg 1–2 times daily',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Fiber (Metamucil® or FiberCon®)',
      'purpose': 'Constipation',
      'dosage': '',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Loperamide (Imodium)',
      'purpose': 'Diarrhea relief',
      'dosage': '2 mg after each loose stool (max 8 mg/day)',
      'administration': 'Oral',
      'notes': 'Caution advised'
    },
    {
      'name': 'Amoxicillin',
      'purpose': 'Bacterial infections',
      'dosage': '500 mg every 8 hours (or as prescribed)',
      'administration': 'Oral',
      'notes': 'Safe'
    },
    {
      'name': 'Erythromycin',
      'purpose': 'Bacterial infections',
      'dosage': '250–500 mg every 6–12 hours',
      'administration': 'Oral',
      'notes': 'Safe (some forms)'
    },
    {
      'name': 'Clotrimazole (Topical)',
      'purpose': 'Yeast infection',
      'dosage': 'Apply once or twice daily',
      'administration': 'Topical',
      'notes': 'Safe'
    },
    {
      'name': 'Labetalol Hydrochloride',
      'purpose': 'Antihypertensive (Alpha and Beta blockers)',
      'dosage': '50mg or 100mg tablet OD orally; 20mg/20ml IV bolus (wait 10min, then 40mg if no response)',
      'administration': 'Oral or IV',
      'notes': ''
    },
    {
      'name': 'Nifedipine',
      'purpose': 'Antihypertensive (Calcium channel blockers)',
      'dosage': '5-20mg OD orally',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Methyldopa',
      'purpose': 'Antihypertensive (Alpha blockers)',
      'dosage': '250mg BD or TDS (max 2g daily titrated by BP)',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Hydralazine Hydrochloride',
      'purpose': 'Antihypertensive (Vasodilators)',
      'dosage': '25mg tablet BD (increase to 50mg if needed); 5mg diluted in 10ml NS IV at 15-20min intervals',
      'administration': 'Oral or IV',
      'notes': ''
    },
    {
      'name': 'Furosemide (Lasix)',
      'purpose': 'Diuretic (e.g., PIH with massive edema, eclampsia with pulmonary edema)',
      'dosage': '40 mg tablet daily following breakfast',
      'administration': 'Oral',
      'notes': ''
    },
    {
      'name': 'Isoxsuprine Hydrochloride (Duvadilan)',
      'purpose': 'Tocolytic agent (inhibit uterine contractions)',
      'dosage': 'Initial: IV drip 100 mg in 5% dextrose @ 0.2ug/minute; Maintenance: IM 10mg 6 hourly or tab 10mg 6-8hrly',
      'administration': 'IV or IM or Oral',
      'notes': 'To continue at least 2 hours after contractions cease'
    },
    {
      'name': 'Ritodrine Hydrochloride (Yutopar)',
      'purpose': 'Tocolytic agent (inhibit uterine contractions)',
      'dosage': 'Initial: IV drip 100 mg in 5% dextrose @ 0.1 mg/minute (increase by 0.05mg/min); Maintenance: Tab 10mg 6-8 hourly (max 120 mg/day)',
      'administration': 'IV or Oral',
      'notes': 'Continue for at least 2 hrs after contractions cease'
    },
    {
      'name': 'Oxytocin (Syntocinon, Pitocin, Syntometrine)',
      'purpose': 'Oxytocics (used in labor)',
      'dosage': '5units/ml or 10 units/ml (dosage varies by preparation)',
      'administration': '',
      'notes': ''
    },
    {
      'name': 'Ergometrine/Methergine/Syntometrine',
      'purpose': 'Ergot derivatives (used in labor)',
      'dosage': '0.25mg/0.5mg or 0.2mg (varies by preparation)',
      'administration': '',
      'notes': ''
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
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Medication Information',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: medications.length,
                  itemBuilder: (context, index) {
                    final medication = medications[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          medication['name']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(medication['name']!),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Purpose: ${medication['purpose']!}'),
                                    const SizedBox(height: 10),
                                    Text('Dosage: ${medication['dosage']!}'),
                                    const SizedBox(height: 10),
                                    Text('Administration: ${medication['administration']!}'),
                                    const SizedBox(height: 10),
                                    Text('Notes: ${medication['notes']!}'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Close'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}