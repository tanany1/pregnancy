import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MedicationScreen extends StatefulWidget {
  @override
  _MedicationScreenState createState() => _MedicationScreenState();
}

class _MedicationScreenState extends State<MedicationScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _filterType = 'Name'; // Default filter type
  List<Map<String, dynamic>> _filteredMedications = [];

  final List<Map<String, dynamic>> medications = [
    {
      'name': 'Adalat (Nifedipine)',
      'barcode': '1234567890123',
      'category': 'C',
      'use': 'Calcium channel blocker for hypertension/preterm labor',
      'dose': 'Hypertension: 30–60 mg once daily (extended-release); Preterm labor (off-label): 10–20 mg orally every 4–6 hours as needed',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Avoid with magnesium sulfate (risk of hypotension); side effects: headache, flushing, dizziness',
      'image': '',
    },
    {
      'name': 'Aldomet (Methyldopa)',
      'barcode': '2345678901234',
      'category': 'B',
      'use': 'Safe for hypertension',
      'dose': 'Initial: 250 mg 2–3 times/day; Maintenance: 500 mg–2 g/day in divided doses; Max: 3 g/day',
      'when_to_take': 'Can be taken with or without food. Taking it with food may help reduce dizziness or stomach upset.',
      'additional_info': 'Side effects: sedation, dry mouth, elevated liver enzymes',
    },
    {
      'name': 'Amaryl (Glimepiride)',
      'barcode': '3456789012345',
      'category': 'C',
      'use': 'Type 2 diabetes',
      'dose': '1–2 mg once daily with breakfast, max 8 mg/day',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Not preferred in pregnancy (risk of neonatal hypoglycemia); insulin preferred. Contraindications: Type 1 diabetes. Side effects: Hypoglycemia.',
    },
    {
      'name': 'Amoxil (Amoxicillin)',
      'barcode': '4567890123456',
      'category': 'B',
      'use': 'Safe antibiotic for infections',
      'dose': '250–500 mg every 8 hours or 500–875 mg every 12 hours',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Well tolerated; watch for penicillin allergy',
    },
    {
      'name': 'Apresoline (Hydralazine)',
      'barcode': '5678901234567',
      'category': 'C',
      'use': 'Hypertensive emergencies (IV)',
      'dose': 'Oral: 25–100 mg/day in divided doses; IV: 5–10 mg slow push every 20–30 mins (emergency)',
      'when_to_take': 'Typically administered intravenously in emergency situations, so food intake is not relevant.',
      'additional_info': 'Side effects: reflex tachycardia, fluid retention',
    },
    {
      'name': 'Augmentin (Amoxicillin + Clavulanic Acid)',
      'barcode': '6789012345678',
      'category': 'B',
      'use': 'Bacterial infections',
      'dose': '500/125 mg every 8 hrs or 875/125 mg every 12 hrs',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'GI upset possible; safe in pregnancy. Contraindications: Penicillin allergy. Side effects: Diarrhea, rash.',
    },
    {
      'name': 'Azelaic Acid Cream',
      'barcode': '7890123456789',
      'category': 'B',
      'use': 'Acne treatment',
      'dose': 'Apply thin layer twice daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Safe in pregnancy; may cause irritation. Reduces inflammation and bacteria.',
    },
    {
      'name': 'Bacitracin Ointment',
      'barcode': '8901234567890',
      'category': 'B',
      'use': 'Antibiotic',
      'dose': 'Apply 1–3 times daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Avoid in deep wounds; well tolerated. Used for minor skin infections; considered safe topically.',
    },
    {
      'name': 'Benadryl (Diphenhydramine)',
      'barcode': '9012345678901',
      'category': 'B',
      'use': 'Sedating antihistamine. Use with caution late pregnancy',
      'dose': 'Oral: 25–50 mg every 4–6 hrs (max 300 mg/day); Topical: 3–4 times/day',
      'when_to_take': 'Can be taken with or without food. Taking it with food may help prevent stomach upset.',
      'additional_info': 'Causes drowsiness',
    },
    {
      'name': 'Benzoyl Peroxide Cream',
      'barcode': '0123456789012',
      'category': 'C',
      'use': 'Acne treatment',
      'dose': 'Start once daily; increase to 2–3 times/day',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'May bleach clothes; causes dryness. Limited systemic absorption; use cautiously.',
    },
    {
      'name': 'Betamethasone Dipropionate Cream',
      'barcode': '1234567890124',
      'category': 'C',
      'use': 'Anti-inflammatory corticosteroid',
      'dose': 'Apply once/twice daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Potent steroid; long-term use → skin thinning. Use cautiously during pregnancy especially on large areas.',
    },
    {
      'name': 'Calamine Lotion',
      'barcode': '2345678901235',
      'category': 'Not Classified',
      'use': 'Skin protectant and anti-itch',
      'dose': 'Apply 3–4 times daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Cooling and soothing effect. Considered safe; used for mild irritation.',
    },
    {
      'name': 'Calcipotriol Cream',
      'barcode': '3456789012346',
      'category': 'C',
      'use': 'Psoriasis treatment',
      'dose': 'Apply once or twice daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Avoid on face; max 100 g/week. Use only if benefits outweigh risks.',
    },
    {
      'name': 'Calcium + Vitamin D',
      'barcode': '4567890123457',
      'category': 'A (High Vitamin D may be Category C)',
      'use': 'Essential for bone health',
      'dose': 'Calcium: 1000–1200 mg/day; Vitamin D: 600–800 IU/day',
      'when_to_take': 'Calcium: Can be taken with food to improve absorption. Vitamin D: Better with a meal containing fat.',
      'additional_info': 'Separate from iron by 2 hrs. Vital for fetal bones, maternal systems, and reduces preeclampsia risk.',
    },
    {
      'name': 'Canesten (Clotrimazole – topical)',
      'barcode': '5678901234568',
      'category': 'B',
      'use': 'Vaginal yeast infections',
      'dose': 'Apply 2–3 times/day for 2–4 weeks',
      'when_to_take': 'Applied vaginally, so food intake is not relevant.',
      'additional_info': 'Safe in pregnancy',
    },
    {
      'name': 'Capsaicin Cream',
      'barcode': '6789012345679',
      'category': 'C',
      'use': 'Pain relief',
      'dose': '3–4 times/day',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Causes initial burning sensation. Avoid in pregnancy due to limited safety data.',
    },
    {
      'name': 'Cardura (Doxazosin)',
      'barcode': '7890123456780',
      'category': 'C',
      'use': 'Hypertension, BPH',
      'dose': 'HTN: Start 1 mg/day; max 16 mg; BPH: 1–8 mg/day',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'First-dose dizziness. Contraindications: Hypersensitivity. Side effects: Dizziness, fatigue.',
    },
    {
      'name': 'Choriomon / Pregnyl (hCG injections)',
      'barcode': '8901234567891',
      'category': 'C',
      'use': 'Stimulates corpus luteum to maintain progesterone',
      'dose': '5,000–10,000 IU IM (ovulation induction)',
      'when_to_take': 'Injected, so food intake is not relevant for administration.',
      'additional_info': 'Risk of OHSS. Mimics LH, supports corpus luteum to produce progesterone until placenta takes over.',
    },
    {
      'name': 'Cialis (Tadalafil)',
      'barcode': '9012345678902',
      'category': 'B',
      'use': 'Erectile dysfunction',
      'dose': 'ED: 10–20 mg before intercourse or 2.5–5 mg daily; BPH: 5 mg daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Avoid with nitrates. Contraindications: Nitrate use. Side effects: Headache.',
      'image': 'assets/cialis.jpg',
    },
    {
      'name': 'Cipralex (Escitalopram)',
      'barcode': '0123456789013',
      'category': 'C',
      'use': 'Depression',
      'dose': '10–20 mg/day',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Taper to discontinue. Contraindications: MAO inhibitor use. Side effects: Nausea.',
    },
    {
      'name': 'Claritin (Loratadine)',
      'barcode': '1234567890125',
      'category': 'B',
      'use': 'Non-sedating antihistamine. Safe during pregnancy',
      'dose': '10 mg once daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Non-sedating; safe in pregnancy',
      'image': 'assets/claritin.jpg',
    },
    {
      'name': 'Clexane (Enoxaparin) / Heparin',
      'barcode': '2345678901236',
      'category': 'B',
      'use': 'Anticoagulants for thrombophilia',
      'dose': 'Prophylaxis: 20–40 mg SC daily; Treatment: 1 mg/kg SC every 12 hrs',
      'when_to_take': 'Injected, so food intake is not relevant for administration.',
      'additional_info': 'Don\'t cross the placenta, safe with monitoring. Preferred in pregnancy.',
    },
    {
      'name': 'Clindamycin Cream',
      'barcode': '3456789012347',
      'category': 'B',
      'use': 'Antibiotic for acne',
      'dose': 'One applicator at bedtime for 3–7 days',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Weakens condoms. Safe topically in pregnancy.',
    },
    {
      'name': 'Clotrimazole Cream',
      'barcode': '4567890123458',
      'category': 'B',
      'use': 'Antifungal',
      'dose': 'Apply twice daily for 2–4 weeks',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Minimal absorption. Treats fungal infections like ringworm; safe for topical use in pregnancy.',
    },
    {
      'name': 'Colace (Docusate Sodium)',
      'barcode': '5678901234569',
      'category': 'C',
      'use': 'Stool softener',
      'dose': '50–300 mg/day',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Used in pregnancy/postpartum',
    },
    {
      'name': 'Crestor (Rosuvastatin)',
      'barcode': '6789012345670',
      'category': 'X',
      'use': 'Hypercholesterolemia',
      'dose': '5–40 mg daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindicated in pregnancy. Contraindications: Liver disease. Side effects: Muscle pain.',
      'image': 'assets/crestor.jpg',
    },
    {
      'name': 'Crinone (Progesterone)',
      'barcode': '7890123456781',
      'category': 'B (vaginal) / D (oral high dose)',
      'use': 'Luteal phase support',
      'dose': '90 mg daily',
      'when_to_take': 'Vaginal gel, so food intake is not relevant for administration.',
      'additional_info': 'Safe in pregnancy. Bioadhesive vaginal gel for sustained release directly to uterus, less systemic absorption.',
    },
    {
      'name': 'Cytotec (Misoprostol)',
      'barcode': '8901234567892',
      'category': 'X',
      'use': 'Abortion, gastric ulcers (off-label)',
      'dose': '200 mcg for ulcers; variable for abortion/labor',
      'when_to_take': 'Can be taken with food to reduce GI side effects.',
      'additional_info': 'Category X unless intentional use',
    },
    {
      'name': 'Danol (Danazol)',
      'barcode': '9012345678903',
      'category': 'X',
      'use': 'Endometriosis. Causes fetal virilization',
      'dose': '200–800 mg/day',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindicated in pregnancy (Category X)',
      'image': 'assets/danazol.jpg',
    },
    {
      'name': 'Dexamethasone',
      'barcode': '0123456789014',
      'category': 'C',
      'use': 'Inflammation',
      'dose': 'Inflammation: 0.5–10 mg/day; Fetal lung maturity: 6 mg IM every 12 hrs × 4',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Fungal infections. Side effects: Immunosuppression.',
    },
    {
      'name': 'Diclegis (Doxylamine + Vitamin B6)',
      'barcode': '1234567890126',
      'category': 'A',
      'use': 'Specifically for nausea/vomiting in pregnancy',
      'dose': '2 tabs at bedtime; max 4/day',
      'when_to_take': 'Often recommended to take on an empty stomach at bedtime to alleviate morning sickness symptoms.',
      'additional_info': 'Safe; causes drowsiness',
    },
    {
      'name': 'Diclofenac',
      'barcode': '2345678901237',
      'category': 'C (1st & 2nd trimester), D (3rd trimester)',
      'use': 'Pain, inflammation',
      'dose': '50–75 mg orally 2–3× daily',
      'when_to_take': 'Can be taken with food to reduce GI upset.',
      'additional_info': 'Avoid in 3rd trimester. Contraindications: Peptic ulcer, bleeding disorders. Side effects: GI upset, headache.',
    },
    {
      'name': 'Dilatrend (Carvedilol)',
      'barcode': '3456789012348',
      'category': 'C',
      'use': 'Hypertension, heart failure',
      'dose': 'Start 6.25 mg BID; titrate up',
      'when_to_take': 'Can be taken with food to reduce side effects.',
      'additional_info': 'Take with food. Contraindications: Severe bradycardia. Side effects: Fatigue.',
      'image': 'assets/dilatrend.jpg',
    },
    {
      'name': 'Duphaston (Dydrogesterone)',
      'barcode': '4567890123459',
      'category': 'B',
      'use': 'Supports endometrial function in progesterone deficiency',
      'dose': '10 mg 1–3× daily',
      'when_to_take': 'Can be taken with or without food. Taking it with food may help reduce any potential stomach upset.',
      'additional_info': 'Safe in early pregnancy. Retro-progesterone, high oral bioavailability, no masculinizing effects on female fetus or androgenic side effects for mother.',
    },
    {
      'name': 'Ergometrine (Methergine)',
      'barcode': '5678901234570',
      'category': 'X',
      'use': 'Postpartum bleeding control',
      'dose': '0.2 mg IM/oral after delivery',
      'when_to_take': 'Typically administered in a hospital setting.',
      'additional_info': 'Not for pregnancy; avoid in HTN',
    },
    {
      'name': 'Erythrocin (Erythromycin)',
      'barcode': '6789012345671',
      'category': 'B',
      'use': 'Alternative antibiotic for penicillin allergy',
      'dose': '250–500 mg every 6 hrs',
      'when_to_take': 'Best taken on an empty stomach (1 hour before or 2 hours after meals). Can be taken with food if it causes stomach upset.',
      'additional_info': 'Safe in pregnancy',
      'image': 'assets/erythrocin.jpg',
    },
    {
      'name': 'Erythromycin Cream',
      'barcode': '7890123456782',
      'category': 'B',
      'use': 'Antibiotic for acne and infections',
      'dose': 'Apply 1–2× daily',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Minimal absorption. Safe topically in pregnancy.',
    },
    {
      'name': 'Estrogen + Progestin Combos (e.g., Cyclo-Proginova)',
      'barcode': '8901234567893',
      'category': 'X',
      'use': 'Hormonal therapy or contraceptives accidentally taken during pregnancy',
      'dose': '1 tab daily (sequential)',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Category X; not for pregnancy',
    },
    {
      'name': 'Ferrous Sulfate (Iron)',
      'barcode': '9012345678904',
      'category': 'A',
      'use': 'Prevention and treatment of iron-deficiency anemia',
      'dose': '30–60 mg elemental iron daily',
      'when_to_take': 'Best taken on an empty stomach. Can be taken with food if it causes stomach upset. Absorption enhanced by Vitamin C.',
      'additional_info': 'Absorption enhanced by Vitamin C.',
    },
    {
      'name': 'Folic Acid',
      'barcode': '0123456789015',
      'category': 'A',
      'use': 'Prevents neural tube defects',
      'dose': '400–800 mcg/day (up to 5 mg in high-risk cases). Recommended preconception and in 1st trimester',
      'when_to_take': 'Can be taken with or without food. Taking it with food might be preferable if you experience any mild nausea.',
      'additional_info': 'Synthetic form of folate (Vitamin B9), crucial for DNA synthesis, repair, and methylation during rapid cell division.',
      'image': 'assets/folic.jpg',
    },
    {
      'name': 'Fusidic Acid Cream',
      'barcode': '1234567890127',
      'category': 'B',
      'use': 'Antibiotic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Effective for bacterial skin infections; topical use safe in pregnancy.',
    },
    {
      'name': 'G.C. Mol Effervescent',
      'barcode': '2345678901238',
      'category': 'Paracetamol: B, Guaifenesin & Vitamin C: Not specifically classified',
      'use': 'Symptomatic relief in adults: fever, headache, sore throat, common cold, and influenza. Guaifenesin acts as an expectorant to loosen mucus. Vitamin C supports immune function.',
      'dose': '1–2 sachets every 4–6 hours, up to 3–4 sachets per day',
      'when_to_take': 'Dissolve in water before use. Can be taken with or without food.',
      'additional_info': 'Comes in effervescent sachets; flavor helps soothe the throat.',
      'active_ingredients': 'Paracetamol (Acetaminophen) 325 mg, Guaifenesin 100 mg, Vitamin C 250 mg',
      'contraindications': 'Hypersensitivity to any component. Use caution in pregnancy and breastfeeding—consult physician.',
      'side_effects': 'Paracetamol overdose → hepatotoxicity. Guaifenesin → mild gastrointestinal upset. Vitamin C at high doses → may cause diarrhea or stomach cramps.',
      'storage': 'Keep below 25 °C, away from moisture and direct sunlight.',
    },
    {
      'name': 'Gas-X (Simethicone)',
      'barcode': '3456789012349',
      'category': 'C',
      'use': 'Gas relief, generally safe',
      'dose': 'Not specified',
      'when_to_take': 'Taken as needed, usually after meals or at bedtime.',
      'additional_info': 'Side Effects: Loose stools. Contraindications: Hypersensitivity.',
    },
    {
      'name': 'Glucophage (Metformin)',
      'barcode': '4567890123460',
      'category': 'B',
      'use': 'Type 2 diabetes',
      'dose': '500-1000 mg twice daily',
      'when_to_take': 'Can be taken with food to reduce GI upset.',
      'additional_info': 'Contraindications: Renal impairment. Side effects: GI upset.',
      'image': 'assets/glucophage.jpg',
    },
    {
      'name': 'Hydrocortisone Cream',
      'barcode': '5678901234571',
      'category': 'C',
      'use': 'Anti-inflammatory, corticosteroid',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Used for eczema and dermatitis; low potency; relatively safe but avoid prolonged use in pregnancy.',
      'image': 'assets/hydrocortisone.jpg',
    },
    {
      'name': 'Imiquimod Cream',
      'barcode': '6789012345672',
      'category': 'C',
      'use': 'Immunomodulator for warts and skin cancers',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Avoid in pregnancy unless benefits outweigh risks.',
    },
    {
      'name': 'Imodium (Loperamide)',
      'barcode': '7890123456783',
      'category': 'C',
      'use': 'For diarrhea, use cautiously',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Infectious/bloody diarrhea. Side Effects: May worsen colitis.',
    },
    {
      'name': 'Imutrexate (Methotrexate)',
      'barcode': '8901234567894',
      'category': 'X',
      'use': 'Cancer, autoimmune, ectopic pregnancy. Teratogenic',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Pregnancy, hypersensitivity. Side Effects: Neurotoxicity (rare).',
    },
    {
      'name': 'Keflex (Cephalexin)',
      'barcode': '9012345678905',
      'category': 'B',
      'use': 'Bacterial infections',
      'dose': '250-500 mg every 6 hours',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Cephalosporin allergy. Side effects: Diarrhea, nausea.',
    },
    {
      'name': 'Ketoconazole Cream',
      'barcode': '0123456789016',
      'category': 'C',
      'use': 'Antifungal',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Treats fungal infections; limited data for pregnancy.',
    },
    {
      'name': 'Lasix (Furosemide)',
      'barcode': '1234567890128',
      'category': 'C',
      'use': 'Diuretic, for severe cases only',
      'dose': '20-80 mg daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Side Effects: Hypokalemia, hyperuricemia. Contraindications: Anuria, sulfa allergy.',
    },
    {
      'name': 'Levitra (Vardenafil)',
      'barcode': '2345678901239',
      'category': 'B',
      'use': 'Erectile dysfunction',
      'dose': '10 mg before sexual activity',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Nitrate use. Side effects: Flushing.',
    },
    {
      'name': 'Lidocaine Cream',
      'barcode': '3456789012350',
      'category': 'B',
      'use': 'Local anesthetic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Minimal absorption; generally safe topically.',
    },
    {
      'name': 'Lipitor (Atorvastatin)',
      'barcode': '4567890123461',
      'category': 'X',
      'use': 'Hypercholesterolemia',
      'dose': '10-40 mg once daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Liver disease. Side effects: Muscle pain.',
    },
    {
      'name': 'Low-Dose Aspirin (Acetylsalicylic Acid / Baby Aspirin)',
      'barcode': '5678901234572',
      'category': 'C (early) / D (3rd trimester)',
      'use': 'Improves placental circulation in high-risk pregnancies',
      'dose': '75–100 mg/day. Usually stopped before the 3rd trimester',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Inhibits COX enzyme, reduces thromboxane A2, decreases platelet aggregation, improves uteroplacental blood flow.',
    },
    {
      'name': 'Marevan / Coumadin / Warfarin',
      'barcode': '6789012345673',
      'category': 'X (except limited 2nd trimester use)',
      'use': 'Anticoagulation, high fetal risk',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Pregnancy (except valve patients). Side Effects: Cholesterol emboli.',
    },
    {
      'name': 'Metamucil / FiberCon (Fiber supplements)',
      'barcode': '7890123456784',
      'category': 'A',
      'use': 'Bulk-forming laxatives',
      'dose': 'Not specified',
      'when_to_take': 'Usually taken with a full glass of water, and can be taken with or without food.',
      'additional_info': 'Contraindications: GI obstruction, fecal impaction. Side Effects: Bloating, flatulence.',
    },
    {
      'name': 'Metronidazole Cream',
      'barcode': '8901234567895',
      'category': 'B',
      'use': 'Antibiotic and antiprotozoal (rosacea)',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Considered safe topically in pregnancy.',
    },
    {
      'name': 'Miconazole Cream',
      'barcode': '9012345678906',
      'category': 'C',
      'use': 'Antifungal',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Used for fungal infections; topical use considered safe.',
    },
    {
      'name': 'Mifepristone',
      'barcode': '0123456789017',
      'category': 'X',
      'use': 'Medical abortion',
      'dose': 'Not specified',
      'when_to_take': 'Administered under medical supervision.',
      'additional_info': 'Contraindications: Hypersensitivity. Side Effects: Uterine cramping, pain.',
    },
    {
      'name': 'Motilium (Domperidone)',
      'barcode': '1234567890129',
      'category': 'C',
      'use': 'Nausea, vomiting, gastroparesis',
      'dose': '10 mg three times daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Prolactin-dependent tumors, cardiac arrhythmias. Side effects: Dry mouth, abdominal cramps.',
    },
    {
      'name': 'Mucinex (Guaifenesin)',
      'barcode': '2345678901240',
      'category': 'C',
      'use': 'Expectorant. Avoid in 1st trimester unless necessary',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food. Taking it with food might help if it causes any stomach upset.',
      'additional_info': 'Contraindications: Hypersensitivity. Side Effects: Drowsiness, dizziness.',
    },
    {
      'name': 'Mupirocin Cream',
      'barcode': '3456789012351',
      'category': 'B',
      'use': 'Antibiotic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Used for bacterial skin infections; minimal systemic absorption.',
    },
    {
      'name': 'Neomycin Sulfate Cream',
      'barcode': '4567890123462',
      'category': 'D',
      'use': 'Antibiotic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Risk of toxicity systemically; topical use usually minimal risk but caution advised.',
    },
    {
      'name': 'Nexium (Esomeprazole)',
      'barcode': '5678901234573',
      'category': 'B',
      'use': 'GERD',
      'dose': '20-40 mg once daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Hypersensitivity. Side effects: Diarrhea.',
    },
    {
      'name': 'Normix (Rifaximin)',
      'barcode': '6789012345674',
      'category': 'C',
      'use': 'Traveler’s diarrhea',
      'dose': '200 mg three times daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Severe hepatic impairment. Side effects: Nausea.',
      'image': 'assets/normix.jpg',
    },
    {
      'name': 'Norvasc (Amlodipine)',
      'barcode': '7890123456785',
      'category': 'C',
      'use': 'Hypertension, angina',
      'dose': '5-10 mg once daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Hypersensitivity. Side effects: Edema, dizziness.',
    },
    {
      'name': 'Panadol / Tylenol (Paracetamol / Acetaminophen)',
      'barcode': '8901234567896',
      'category': 'B',
      'use': 'First-line for pain and fever',
      'dose': '500–1000 mg every 4–6 hours (max 4 g/day). Safe all trimesters',
      'when_to_take': 'Can be taken with or without food. If you experience stomach upset, taking it with food might help.',
      'additional_info': 'Contraindications: Severe liver disease.',
    },
    {
      'name': 'Pepcid (Famotidine)',
      'barcode': '9012345678907',
      'category': 'B',
      'use': 'H2 blocker for GERD',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Hypersensitivity.',
    },
    {
      'name': 'Pimecrolimus Cream',
      'barcode': '0123456789018',
      'category': 'C',
      'use': 'Immunomodulator for eczema',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Safety not well established in pregnancy; use only if benefits outweigh risks.',
    },
    {
      'name': 'Plavix (Clopidogrel)',
      'barcode': '1234567890130',
      'category': 'B',
      'use': 'Prevention of clots',
      'dose': '75 mg once daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Active bleeding. Side effects: Bleeding.',
    },
    {
      'name': 'Proluton Depot (Hydroxyprogesterone Caproate)',
      'barcode': '2345678901241',
      'category': 'D',
      'use': 'Prevents preterm labor in high-risk women',
      'dose': '250 mg IM weekly from week 16–36. Reserved for selected cases',
      'when_to_take': 'Injected, so food intake is not relevant.',
      'additional_info': 'Synthetic, long-acting progesterone, depot formulation for slow release.',
    },
    {
      'name': 'Proscar / Avodart (Finasteride, Dutasteride)',
      'barcode': '3456789012352',
      'category': 'X',
      'use': 'BPH, baldness. Causes fetal feminization abnormalities',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Pregnancy. Side Effects: Decreased libido, gynecomastia.',
    },
    {
      'name': 'Retinoid Cream (Tretinoin)',
      'barcode': '4567890123463',
      'category': 'C',
      'use': 'Acne treatment',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Avoid in pregnancy due to teratogenic risk.',
    },
    {
      'name': 'Roaccutane / Netlook (Isotretinoin)',
      'barcode': '5678901234574',
      'category': 'X',
      'use': 'Severe acne. Causes severe birth defects',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with food to enhance absorption.',
      'additional_info': 'Contraindications: Pregnancy (highly teratogenic). Side Effects: Dry lips, skin.',
    },
    {
      'name': 'Robitussin DM (Dextromethorphan)',
      'barcode': '6789012345675',
      'category': 'C',
      'use': 'Cough suppressant. Use if needed',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: MAOIs. Side Effects: Sedation.',
    },
    {
      'name': 'Salicylic Acid Cream',
      'barcode': '7890123456786',
      'category': 'C',
      'use': 'Keratolytic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Use with caution; avoid large areas or high concentration during pregnancy.',
    },
    {
      'name': 'Septrin (Trimethoprim + Sulfamethoxazole)',
      'barcode': '8901234567897',
      'category': 'D',
      'use': 'UTIs',
      'dose': 'Double-strength tablet twice daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Sulfa allergy. Side effects: Rash.',
    },
    {
      'name': 'Silver Sulfadiazine Cream',
      'barcode': '9012345678908',
      'category': 'C',
      'use': 'Antimicrobial for burns',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Sulfonamide component may have risks; avoid in late pregnancy.',
    },
    {
      'name': 'Sulfur Cream',
      'barcode': '0123456789019',
      'category': 'Not Classified',
      'use': 'Antibacterial and keratolytic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Generally safe, limited data.',
    },
    {
      'name': 'Syntocinon / Pitocin (Oxytocin)',
      'barcode': '1234567890131',
      'category': 'X (if not in labor)',
      'use': 'Induce labor under supervision',
      'dose': 'Not specified',
      'when_to_take': 'Typically administered intravenously in a hospital setting, so food intake is not relevant.',
      'additional_info': 'Contraindications: CPD (cephalopelvic disproportion). Side Effects: Neonatal seizures.',
    },
    {
      'name': 'Syntometrine (Oxytocin + Ergometrine)',
      'barcode': '2345678901242',
      'category': 'X',
      'use': 'Postpartum bleeding control',
      'dose': 'Not specified',
      'when_to_take': 'Typically administered in a hospital setting.',
      'additional_info': 'Side Effects: Allergy, chest pain.',
    },
    {
      'name': 'Synthroid (Levothyroxine)',
      'barcode': '3456789012353',
      'category': 'A',
      'use': 'Hypothyroidism',
      'dose': '25-200 mcg once daily',
      'when_to_take': 'Best taken on an empty stomach, at least 30 minutes before food.',
      'additional_info': 'Contraindications: Untreated thyrotoxicosis. Side effects: Palpitations, weight loss.',
    },
    {
      'name': 'Tacrolimus Cream',
      'barcode': '4567890123464',
      'category': 'C',
      'use': 'Immunomodulator',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Similar to pimecrolimus; caution in pregnancy.',
    },
    {
      'name': 'Telfast (Fexofenadine)',
      'barcode': '5678901234575',
      'category': 'C',
      'use': 'Allergies',
      'dose': '120 mg once or twice daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Hypersensitivity. Side effects: Headache.',
    },
    {
      'name': 'Temazepam, Triazolam',
      'barcode': '6789012345676',
      'category': 'D',
      'use': 'Insomnia. Teratogenic risk',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Possibly narrow-angle glaucoma. Side Effects: Drowsiness.',
    },
    {
      'name': 'Thalix (Thalidomide)',
      'barcode': '7890123456787',
      'category': 'X',
      'use': 'Multiple myeloma, leprosy. Causes severe limb deformities',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Pregnancy (Category X).',
    },
    {
      'name': 'Tolnaftate Cream',
      'barcode': '8901234567898',
      'category': 'C',
      'use': 'Antifungal for athlete’s foot',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Limited pregnancy data; use cautiously.',
    },
    {
      'name': 'Topical Phenylephrine (Preparation H)',
      'barcode': '9012345678909',
      'category': 'Not specified',
      'use': 'Vasoconstrictor, relieves discomfort',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Contraindications: Hypersensitivity.',
    },
    {
      'name': 'Trandate (Labetalol)',
      'barcode': '0123456789020',
      'category': 'C',
      'use': 'Alpha/beta-blocker, used in preeclampsia',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with food to enhance absorption and reduce the risk of orthostatic hypotension.',
      'additional_info': 'Contraindications: Asthma, airway disease.',
    },
    {
      'name': 'Triamcinolone Acetonide Cream',
      'barcode': '1234567890132',
      'category': 'C',
      'use': 'Anti-inflammatory corticosteroid',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Potent steroid; caution in pregnancy.',
    },
    {
      'name': 'Tums (Calcium Carbonate)',
      'barcode': '2345678901243',
      'category': 'B',
      'use': 'Antacid for occasional heartburn',
      'dose': 'Not specified',
      'when_to_take': 'Taken as needed, usually after meals or when heartburn symptoms occur.',
      'additional_info': 'Side Effects: Constipation. Interaction: Reduces drug absorption.',
    },
    {
      'name': 'Urea Cream',
      'barcode': '3456789012354',
      'category': 'Not Classified',
      'use': 'Moisturizer and keratolytic',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Generally safe.',
    },
    {
      'name': 'Utrogestan (Progesterone)',
      'barcode': '4567890123465',
      'category': 'B (vaginal) / D (oral high dose)',
      'use': 'Luteal phase support',
      'dose': '200–400 mg/day (vaginal)',
      'when_to_take': 'Vaginal, so food intake is not relevant for administration.',
      'additional_info': 'Micronized progesterone, enhances absorption, vaginal route preferred to minimize systemic side effects like drowsiness.',
    },
    {
      'name': 'Vasodilan (Isoxsuprine)',
      'barcode': '5678901234576',
      'category': 'C',
      'use': 'Beta-agonist, rarely used',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Side Effects: Hypotension, dizziness.',
    },
    {
      'name': 'Ventolin (Salbutamol)',
      'barcode': '6789012345677',
      'category': 'C',
      'use': 'Asthma',
      'dose': '2 puffs every 4-6 hours',
      'when_to_take': 'Inhaled, so food intake is not relevant.',
      'additional_info': 'Contraindications: Hypersensitivity. Side effects: Tremor.',
    },
    {
      'name': 'Vitamin B6 (Pyridoxine)',
      'barcode': '7890123456788',
      'category': 'A',
      'use': 'Morning sickness relief',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Safe in pregnancy.',
    },
    {
      'name': 'Voltaren (Diclofenac)',
      'barcode': '8901234567899',
      'category': 'C (1st & 2nd trimester), D (3rd trimester)',
      'use': 'Pain and inflammation',
      'dose': '50 mg two to three times daily',
      'when_to_take': 'Can be taken with food to reduce GI upset.',
      'additional_info': 'Contraindications: Peptic ulcer. Side effects: GI upset.',
    },
    {
      'name': 'Witch Hazel Pads (Tucks)',
      'barcode': '9012345678910',
      'category': 'Not specified',
      'use': 'Astringent and anti-inflammatory',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Side Effects: Rare allergic reaction.',
    },
    {
      'name': 'Xanax (Alprazolam)',
      'barcode': '0123456789021',
      'category': 'D',
      'use': 'Anxiety',
      'dose': '0.25-0.5 mg three times daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Narrow-angle glaucoma. Side effects: Drowsiness.',
    },
    {
      'name': 'Xarelto (Rivaroxaban)',
      'barcode': '1234567890133',
      'category': 'C',
      'use': 'Thromboembolism prevention',
      'dose': '10-20 mg once daily',
      'when_to_take': 'Can be taken with food to enhance absorption.',
      'additional_info': 'Contraindications: Bleeding. Side effects: Anemia.',
    },
    {
      'name': 'Xithron (Azithromycin)',
      'barcode': '2345678901245',
      'category': 'B',
      'use': 'Treats respiratory, ENT, skin, and sexually transmitted infections',
      'dose': '500 mg on Day 1, then 250 mg once daily for 4 days (or 500 mg daily for 3 days)',
      'when_to_take': 'Once daily, with or without food.',
      'additional_info': 'Side Effects: Nausea, diarrhea, stomach pain. Caution: May cause heart rhythm issues (QT prolongation). Breastfeeding: Usually safe.',
    },
    {
      'name': 'Yutopar (Ritodrine)',
      'barcode': '2345678901244',
      'category': 'B',
      'use': 'Inhibits uterine contractions',
      'dose': 'Not specified',
      'when_to_take': 'Dosage and timing are typically determined by a healthcare provider in a hospital setting.',
      'additional_info': 'Side Effects: Tachycardia.',
    },
    {
      'name': 'Zantac (Ranitidine)',
      'barcode': '3456789012355',
      'category': 'B',
      'use': 'GERD',
      'dose': '150 mg twice daily',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Contraindications: Hypersensitivity. Side effects: Headache.',
    },
    {
      'name': 'Zinc Oxide Ointment',
      'barcode': '4567890123466',
      'category': 'Not Classified',
      'use': 'Skin barrier cream',
      'dose': 'Not specified',
      'when_to_take': 'Applied topically, so food intake is not relevant.',
      'additional_info': 'Safe for skin protection.',
    },
    {
      'name': 'Zyrtec (Cetirizine)',
      'barcode': '5678901234577',
      'category': 'B',
      'use': 'Non-sedating antihistamine. Safe during pregnancy',
      'dose': 'Not specified',
      'when_to_take': 'Can be taken with or without food.',
      'additional_info': 'Avoid combining with other sedatives.',
    },
  ];

  @override
  void initState() {
    super.initState();
    _filteredMedications = medications; // Initially show all medications
    _searchController.addListener(_filterMedications);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showCategoryDefinitions(context);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterMedications() {
    final query = _searchController.text.trim();
    setState(() {
      if (query.isEmpty) {
        _filteredMedications = medications;
      } else {
        if (_filterType == 'Name') {
          _filteredMedications = medications
              .where((med) => med['name'].toLowerCase().contains(query.toLowerCase()))
              .toList();
        } else {
          _filteredMedications = medications
              .where((med) => med['barcode'].contains(query))
              .toList();
        }
      }
    });
  }

  void _showCategoryDefinitions(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        title: const Text('Pregnancy Category Definitions', style: TextStyle(color: Colors.black)),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '🔹 ', style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(text: 'Category A', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '\nDefinition: Controlled studies in pregnant women show no risk to the fetus in any trimester.\n', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '🔹 ', style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(text: 'Category B', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '\nDefinition: Animal studies show no fetal risk, but there are no well-controlled studies in humans OR Animal studies showed risk, but human studies did not.\n', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '🔹 ', style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(text: 'Category C', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '\nDefinition: Animal studies show adverse effects, and no adequate human studies are available BUT the benefits may outweigh the risks in some situations.\n', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '🔹 ', style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(text: 'Category D', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '\nDefinition: There is positive evidence of fetal risk in human studies, BUT the benefits may be acceptable in life-threatening or serious diseases.\n', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: '🔹 ', style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(text: 'Category X', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '\nDefinition: Studies in animals or humans show fetal abnormalities, or there is evidence of fetal risk. Risks clearly outweigh any potential benefit.', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: _filterType == 'Name' ? 'Search by name...' : 'Search by barcode...',
                          prefixIcon: Icon(Icons.search, color: Colors.pink[800]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.pink[300]!),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: _filterType == 'Barcode' ? TextInputType.number : TextInputType.text,
                        inputFormatters: _filterType == 'Barcode'
                            ? [FilteringTextInputFormatter.digitsOnly]
                            : [],
                      ),
                    ),
                    const SizedBox(width: 8),
                    DropdownButton<String>(
                      value: _filterType,
                      items: ['Name', 'Barcode']
                          .map((type) => DropdownMenuItem(
                        value: type,
                        child: Text(type),
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _filterType = value!;
                          _searchController.clear();
                          _filterMedications();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: _filteredMedications.length,
                  itemBuilder: (context, index) {
                    final medication = _filteredMedications[index];
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
                              title: Text(medication['name']!, style: const TextStyle(color: Colors.black)),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (medication['image'] != null && medication['image'].isNotEmpty)
                                      Column(
                                        children: [
                                          Image.asset(
                                            medication['image'],
                                            height: 150,
                                            width: 200,
                                            fit: BoxFit.contain,
                                            errorBuilder: (context, error, stackTrace) => const Text('Image not available', style: TextStyle(color: Colors.black)),
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ),
                                    const SizedBox(height: 10),
                                    _buildBoldText('Barcode: ${medication['barcode']}'),
                                    const SizedBox(height: 10),
                                    _buildBoldText('Category: ${medication['category']!}'),
                                    const SizedBox(height: 10),
                                    _buildBoldText('Use: ${medication['use']!}'),
                                    const SizedBox(height: 10),
                                    _buildBoldText('Dose: ${medication['dose']!}'),
                                    const SizedBox(height: 10),
                                    _buildBoldText('When to Take: ${medication['when_to_take']!}'),
                                    const SizedBox(height: 10),
                                    _buildBoldText('Additional Info: ${medication['additional_info']!}'),
                                    if (medication.containsKey('active_ingredients')) ...[
                                      const SizedBox(height: 10),
                                      _buildBoldText('Active Ingredients: ${medication['active_ingredients']!}'),
                                    ],
                                    if (medication.containsKey('contraindications')) ...[
                                      const SizedBox(height: 10),
                                      _buildBoldText('Contraindications: ${medication['contraindications']!}'),
                                    ],
                                    if (medication.containsKey('side_effects')) ...[
                                      const SizedBox(height: 10),
                                      _buildBoldText('Side Effects: ${medication['side_effects']!}'),
                                    ],
                                    if (medication.containsKey('storage')) ...[
                                      const SizedBox(height: 10),
                                      _buildBoldText('Storage: ${medication['storage']!}'),
                                    ],
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Close', style: TextStyle(color: Colors.black)),
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

  Widget _buildBoldText(String text) {
    final parts = text.split('**');
    return RichText(
      text: TextSpan(
        children: parts.asMap().entries.map((entry) {
          final index = entry.key;
          final part = entry.value;
          if (index.isOdd) {
            return TextSpan(text: part, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black));
          }
          return TextSpan(text: part, style: const TextStyle(color: Colors.black));
        }).toList(),
      ),
    );
  }
}