import 'package:flutter/material.dart';

class DiseaseScreen extends StatelessWidget {
  final List<Map<String, String>> diseases = [
    {
      'name': 'Hypertension in Pregnancy',
      'definition': 'Hypertension in pregnancy is a condition characterized by high blood pressure during pregnancy, which can lead to complications for both the mother and the fetus.',
      'causes': 'The exact causes are unknown, but risk factors include pre-existing hypertension, kidney disease, and family history of hypertension.',
      'symptoms': 'Women may experience headaches, vision changes, and swelling. Diagnosis is based on blood pressure measurement and urine tests.',
      'effects': 'Can lead to complications such as preeclampsia, placental abruption, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Hypertension in Pregnancy'
    },
    {
      'name': 'Gestational Diabetes Mellitus',
      'definition': 'Gestational diabetes mellitus is a condition characterized by high blood sugar levels during pregnancy, which can lead to complications for both the mother and the fetus.',
      'causes': 'The exact causes are unknown, but risk factors include obesity, family history of diabetes, and previous history of gestational diabetes.',
      'symptoms': 'Women may experience increased thirst and urination, fatigue, and blurred vision. Diagnosis is based on glucose tolerance testing.',
      'effects': 'Can lead to complications such as macrosomia, birth trauma, and neonatal hypoglycemia.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Gestational Diabetes Mellitus'
    },
    {
      'name': 'Preeclampsia',
      'definition': 'Preeclampsia is a condition characterized by high blood pressure and damage to organs such as the kidneys and liver during pregnancy.',
      'causes': 'The exact causes are unknown, but risk factors include pre-existing hypertension, kidney disease, and previous history of preeclampsia.',
      'symptoms': 'Women may experience high blood pressure, proteinuria, and organ damage. Diagnosis is based on blood pressure measurement and urine tests.',
      'effects': 'Can lead to complications such as preterm labor, placental abruption, and fetal growth restriction.',
      'reference': 'World Health Organization. (2019). Preeclampsia'
    },
    {
      'name': 'Placental Abruption',
      'definition': 'Placental abruption is a condition where the placenta separates from the uterus, potentially leading to severe bleeding and fetal distress.',
      'causes': 'The exact causes are unknown, but risk factors include hypertension, trauma, and previous history of placental abruption.',
      'symptoms': 'Women may experience vaginal bleeding, abdominal pain, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placental Abruption'
    },
    {
      'name': 'Fetal Growth Restriction',
      'definition': 'Fetal growth restriction is a condition where the fetus does not grow at a normal rate during pregnancy.',
      'causes': 'The exact causes are unknown, but risk factors include placental insufficiency, maternal medical conditions, and multiple pregnancy.',
      'symptoms': 'May be indicated by abnormal fetal growth patterns or decreased fetal movement. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications including increased risk of stillbirth, neonatal morbidity, and long-term health problems.',
      'reference': 'World Health Organization. (2019). Fetal Growth Restriction'
    },
    {
      'name': 'Preterm Labor',
      'definition': 'Preterm labor is a condition where a woman goes into labor before 37 weeks of gestation.',
      'causes': 'Can be caused by infection, multiple pregnancy, and cervical insufficiency.',
      'symptoms': 'Women may experience contractions, cervical dilation, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to complications including respiratory distress, neonatal morbidity, and long-term health problems.',
      'reference': 'World Health Organization. (2019). Preterm Labor'
    },
    {
      'name': 'Placenta Previa',
      'definition': 'Placenta previa is a condition where the placenta covers the cervix, potentially leading to severe bleeding during pregnancy or delivery.',
      'causes': 'Risk factors include previous uterine surgery, multiple pregnancy, and placenta previa in a previous pregnancy.',
      'symptoms': 'Women may experience vaginal bleeding, abdominal pain, and fetal distress. Diagnosis is based on ultrasound examination.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Previa'
    },
    {
      'name': 'Uterine Rupture',
      'definition': 'Uterine rupture is a life-threatening condition where the uterus tears, potentially leading to severe maternal and fetal morbidity and mortality.',
      'causes': 'Risk factors include previous uterine surgery, multiple pregnancy, and obstructed labor.',
      'symptoms': 'Women may experience severe abdominal pain, vaginal bleeding, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Rupture'
    },
    {
      'name': 'Amniotic Fluid Embolism',
      'definition': 'Amniotic fluid embolism is a rare but life-threatening condition where amniotic fluid enters the maternal circulation, potentially leading to respiratory distress, cardiac arrest, and maternal mortality.',
      'causes': 'Risk factors include placental abruption, uterine rupture, and tumultuous labor.',
      'symptoms': 'Women may experience sudden respiratory distress, cardiac arrest, and maternal collapse. Diagnosis is based on clinical presentation and laboratory tests.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'World Health Organization. (2019). Amniotic Fluid Embolism'
    },
    {
      'name': 'Fetal Demise',
      'definition': 'Fetal demise is a condition where the fetus dies in utero, potentially leading to maternal morbidity and mortality.',
      'causes': 'Risk factors include placental insufficiency, maternal medical conditions, and genetic disorders.',
      'symptoms': 'Women may experience decreased fetal movement, vaginal bleeding, and fetal distress. Diagnosis is based on ultrasound examination.',
      'effects': 'Can lead to maternal morbidity and mortality if not promptly treated.',
      'reference': 'World Health Organization. (2019). Fetal Demise'
    },
    {
      'name': 'Preeclampsia with Severe Features',
      'definition': 'Preeclampsia with severe features is a condition characterized by high blood pressure and damage to organs such as the kidneys and liver during pregnancy.',
      'causes': 'Risk factors include pre-existing hypertension, kidney disease, and previous history of preeclampsia.',
      'symptoms': 'Women may experience high blood pressure, proteinuria, and organ damage. Diagnosis is based on blood pressure measurement and urine tests.',
      'effects': 'Can lead to complications such as preterm labor, placental abruption, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Preeclampsia'
    },
    {
      'name': 'Gestational Hypertension',
      'definition': 'Gestational hypertension is a condition characterized by high blood pressure during pregnancy, without proteinuria or other signs of preeclampsia.',
      'causes': 'Risk factors include pre-existing hypertension, kidney disease, and family history of hypertension.',
      'symptoms': 'Women may experience high blood pressure and swelling. Diagnosis is based on blood pressure measurement.',
      'effects': 'Can lead to complications such as preeclampsia and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Gestational Hypertension'
    },
    {
      'name': 'Placental Insufficiency',
      'definition': 'Placental insufficiency is a condition where the placenta does not function properly, potentially leading to fetal growth restriction and other complications.',
      'causes': 'Risk factors include hypertension, kidney disease, and previous history of placental insufficiency.',
      'symptoms': 'Women may experience decreased fetal movement and abnormal fetal heart rate patterns. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications for the fetus, including fetal growth restriction and increased risk of stillbirth.',
      'reference': 'World Health Organization. (2019). Placental Insufficiency'
    },
    {
      'name': 'Fetal Anemia',
      'definition': 'Fetal anemia is a condition where the fetus has a low red blood cell count, potentially leading to fetal hydrops and other complications.',
      'causes': 'Risk factors include maternal infections, fetal-maternal hemorrhage, and genetic disorders.',
      'symptoms': 'May be indicated by abnormal fetal heart rate patterns, fetal hydrops, and decreased fetal movement. Diagnosis is based on ultrasound examination and laboratory tests.',
      'effects': 'Can lead to complications including fetal hydrops and increased risk of stillbirth.',
      'reference': 'World Health Organization. (2019). Fetal Anemia'
    },
    {
      'name': 'Uterine Anomalies',
      'definition': 'Uterine anomalies are congenital or acquired abnormalities of the uterus that can affect reproductive health.',
      'causes': 'Risk factors include family history and certain medical conditions.',
      'symptoms': 'Women may experience menstrual abnormalities, infertility, and recurrent miscarriage. Diagnosis is based on imaging studies and clinical presentation.',
      'effects': 'Can lead to complications during pregnancy, including miscarriage, preterm labor, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Anomalies'
    },
    {
      'name': 'Cervical Insufficiency',
      'definition': 'Cervical insufficiency is a condition where the cervix is weak and may open prematurely during pregnancy.',
      'causes': 'Risk factors include previous cervical surgery, trauma, or congenital anomalies.',
      'symptoms': 'Women may experience painless cervical dilation and preterm labor. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to preterm birth and other complications for the fetus.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Cervical Insufficiency'
    },
    {
      'name': 'Multiple Pregnancy',
      'definition': 'Multiple pregnancy is a condition where a woman carries more than one fetus during pregnancy.',
      'causes': 'Risk factors include fertility treatments and family history of twins.',
      'symptoms': 'Women may experience increased fetal movement and uterine size. Diagnosis is based on ultrasound examination.',
      'effects': 'Can lead to complications including preterm labor and fetal growth restriction.',
      'reference': 'World Health Organization. (2019). Multiple Pregnancy'
    },
    {
      'name': 'Placenta Accreta',
      'definition': 'Placenta accreta is a condition where the placenta grows too deeply into the uterine wall.',
      'causes': 'Risk factors include previous uterine surgery, multiple pregnancy, and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Accreta'
    },
    {
      'name': 'Fetal Macrosomia',
      'definition': 'Fetal macrosomia is a condition where the fetus is larger than normal.',
      'causes': 'Risk factors include maternal diabetes and obesity.',
      'symptoms': 'May be indicated by ultrasound examination and estimated fetal weight.',
      'effects': 'Can lead to complications during delivery, including birth trauma and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Macrosomia'
    },
    {
      'name': 'Amniotic Fluid Infection',
      'definition': 'Amniotic fluid infection is a condition where the amniotic fluid becomes infected.',
      'causes': 'Risk factors include prolonged labor and rupture of membranes.',
      'symptoms': 'Women may experience fever, uterine tenderness, and fetal distress. Diagnosis is based on clinical presentation and laboratory tests.',
      'effects': 'Can lead to complications including preterm labor and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Amniotic Fluid Infection'
    },
    {
      'name': 'Fetal Growth Restriction with Abnormal Fetal Heart Rate',
      'definition': 'Fetal growth restriction with abnormal fetal heart rate is a condition where the fetus does not grow at a normal rate and has abnormal heart rate patterns.',
      'causes': 'Risk factors include placental insufficiency and maternal medical conditions.',
      'symptoms': 'May be indicated by abnormal fetal growth patterns and abnormal fetal heart rate patterns. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Growth Restriction'
    },
    {
      'name': 'Placental Abruption with Fetal Distress',
      'definition': 'Placental abruption with fetal distress is a condition where the placenta separates from the uterus, potentially leading to severe bleeding and fetal distress.',
      'causes': 'Risk factors include hypertension and trauma.',
      'symptoms': 'Women may experience vaginal bleeding, abdominal pain, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placental Abruption'
    },
    {
      'name': 'Uterine Rupture with Maternal Hemorrhage',
      'definition': 'Uterine rupture with maternal hemorrhage is a life-threatening condition where the uterus tears, potentially leading to severe bleeding and maternal morbidity and mortality.',
      'causes': 'Risk factors include previous uterine surgery and obstructed labor.',
      'symptoms': 'Women may experience severe abdominal pain, vaginal bleeding, and maternal shock. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Rupture'
    },
    {
      'name': 'Fetal Anemia with Hydrops Fetalis',
      'definition': 'Fetal anemia with hydrops fetalis is a condition where the fetus has a low red blood cell count, potentially leading to fluid accumulation and other complications.',
      'causes': 'Risk factors include maternal infections and genetic disorders.',
      'symptoms': 'May be indicated by abnormal fetal heart rate patterns, fetal hydrops, and decreased fetal movement. Diagnosis is based on ultrasound examination and laboratory tests.',
      'effects': 'Can lead to complications including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Anemia'
    },
    {
      'name': 'Placenta Previa with Hemorrhage',
      'definition': 'Placenta previa with hemorrhage is a condition where the placenta covers the cervix, potentially leading to severe bleeding during pregnancy or delivery.',
      'causes': 'Risk factors include previous uterine surgery and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Previa'
    },
    {
      'name': 'Amniotic Fluid Embolism with Maternal Collapse',
      'definition': 'Amniotic fluid embolism with maternal collapse is a rare but life-threatening condition where amniotic fluid enters the maternal circulation, potentially leading to respiratory distress, cardiac arrest, and maternal collapse.',
      'causes': 'Risk factors include placental abruption and uterine rupture.',
      'symptoms': 'Women may experience sudden respiratory distress, cardiac arrest, and maternal collapse. Diagnosis is based on clinical presentation and laboratory tests.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'World Health Organization. (2019). Amniotic Fluid Embolism'
    },
    {
      'name': 'Fetal Demise with Maternal Coagulopathy',
      'definition': 'Fetal demise with maternal coagulopathy is a condition where the fetus dies in utero, potentially leading to maternal coagulopathy and other complications.',
      'causes': 'Risk factors include placental insufficiency and maternal medical conditions.',
      'symptoms': 'Women may experience decreased fetal movement and vaginal bleeding. Diagnosis is based on ultrasound examination and laboratory tests.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Fetal Demise'
    },
    {
      'name': 'Placental Insufficiency with Fetal Growth Restriction',
      'definition': 'Placental insufficiency with fetal growth restriction is a condition where the placenta does not function properly, potentially leading to fetal growth restriction and other complications.',
      'causes': 'Risk factors include hypertension and maternal medical conditions.',
      'symptoms': 'Women may experience decreased fetal movement and abnormal fetal heart rate patterns. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Placental Insufficiency'
    },
    {
      'name': 'Uterine Anomalies with Reproductive Implications',
      'definition': 'Uterine anomalies with reproductive implications are congenital or acquired abnormalities of the uterus that can affect reproductive health.',
      'causes': 'Risk factors include family history and certain medical conditions.',
      'symptoms': 'Women may experience menstrual abnormalities, infertility, and recurrent miscarriage. Diagnosis is based on imaging studies and clinical presentation.',
      'effects': 'Can lead to complications during pregnancy, including miscarriage, preterm labor, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Anomalies'
    },
    {
      'name': 'Cervical Insufficiency with Preterm Labor',
      'definition': 'Cervical insufficiency with preterm labor is a condition where the cervix is weak and may open prematurely during pregnancy, potentially leading to preterm labor and birth.',
      'causes': 'Risk factors include previous cervical surgery, trauma, or congenital anomalies.',
      'symptoms': 'Women may experience painless cervical dilation and preterm labor. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to preterm birth and other complications for the fetus.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Cervical Insufficiency'
    },
    {
      'name': 'Fetal Macrosomia with Birth Trauma',
      'definition': 'Fetal macrosomia with birth trauma is a condition where the fetus is larger than normal, potentially leading to birth trauma and other complications.',
      'causes': 'Risk factors include maternal diabetes and obesity.',
      'symptoms': 'May be indicated by ultrasound examination and estimated fetal weight.',
      'effects': 'Can lead to complications during delivery, including birth trauma and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Macrosomia'
    },
    {
      'name': 'Placenta Accreta with Maternal Hemorrhage',
      'definition': 'Placenta accreta with maternal hemorrhage is a condition where the placenta grows too deeply into the uterine wall, potentially leading to severe bleeding during pregnancy or delivery.',
      'causes': 'Risk factors include previous uterine surgery and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Accreta'
    },
    {
      'name': 'Uterine Rupture with Fetal Distress',
      'definition': 'Uterine rupture with fetal distress is a life-threatening condition where the uterus tears, potentially leading to severe bleeding and fetal distress.',
      'causes': 'Risk factors include previous uterine surgery and obstructed labor.',
      'symptoms': 'Women may experience severe abdominal pain, vaginal bleeding, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Rupture'
    },
    {
      'name': 'Amniotic Fluid Infection with Preterm Labor',
      'definition': 'Amniotic fluid infection with preterm labor is a condition where the amniotic fluid becomes infected, potentially leading to preterm labor and other complications.',
      'causes': 'Risk factors include prolonged labor and rupture of membranes.',
      'symptoms': 'Women may experience fever, uterine tenderness, and fetal distress. Diagnosis is based on clinical presentation and laboratory tests.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'World Health Organization. (2019). Amniotic Fluid Infection'
    },
    {
      'name': 'Fetal Growth Restriction with Oligohydramnios',
      'definition': 'Fetal growth restriction with oligohydramnios is a condition where the fetus does not grow at a normal rate and has decreased amniotic fluid levels.',
      'causes': 'Risk factors include placental insufficiency and maternal medical conditions.',
      'symptoms': 'May be indicated by abnormal fetal growth patterns and decreased amniotic fluid levels. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Growth Restriction'
    },
    {
      'name': 'Placenta Previa with Fetal Distress',
      'definition': 'Placenta previa with fetal distress is a condition where the placenta covers the cervix, potentially leading to severe bleeding and fetal distress.',
      'causes': 'Risk factors include previous uterine surgery and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to severe maternal and fetal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Previa'
    },
    {
      'name': 'Uterine Anomalies with Infertility',
      'definition': 'Uterine anomalies with infertility are congenital or acquired abnormalities of the uterus that can affect reproductive health and fertility.',
      'causes': 'Risk factors include family history and certain medical conditions.',
      'symptoms': 'Women may experience menstrual abnormalities, infertility, and recurrent miscarriage. Diagnosis is based on imaging studies and clinical presentation.',
      'effects': 'Can lead to complications during pregnancy, including miscarriage, preterm labor, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Anomalies'
    },
    {
      'name': 'Cervical Insufficiency with Cerclage',
      'definition': 'Cervical insufficiency with cerclage is a condition where the cervix is weak and may open prematurely during pregnancy, and a cerclage is used to support the cervix.',
      'causes': 'Risk factors include previous cervical surgery, trauma, or congenital anomalies.',
      'symptoms': 'Women may experience painless cervical dilation and preterm labor. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to preterm birth and other complications for the fetus.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Cervical Insufficiency'
    },
    {
      'name': 'Fetal Anemia with Intrauterine Transfusion',
      'definition': 'Fetal anemia with intrauterine transfusion is a condition where the fetus has a low red blood cell count, potentially leading to fetal hydrops and other complications.',
      'causes': 'Risk factors include maternal infections and genetic disorders.',
      'symptoms': 'May be indicated by abnormal fetal heart rate patterns, fetal hydrops, and decreased fetal movement. Diagnosis is based on ultrasound examination and laboratory tests.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Anemia'
    },
    {
      'name': 'Placental Abruption with Maternal Shock',
      'definition': 'Placental abruption with maternal shock is a condition where the placenta separates from the uterus, potentially leading to severe bleeding and maternal shock.',
      'causes': 'Risk factors include hypertension and trauma.',
      'symptoms': 'Women may experience vaginal bleeding, abdominal pain, and maternal shock. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placental Abruption'
    },
    {
      'name': 'Uterine Rupture with Fetal Demise',
      'definition': 'Uterine rupture with fetal demise is a life-threatening condition where the uterus tears, potentially leading to severe bleeding and fetal demise.',
      'causes': 'Risk factors include previous uterine surgery and obstructed labor.',
      'symptoms': 'Women may experience severe abdominal pain, vaginal bleeding, and fetal demise. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Rupture'
    },
    {
      'name': 'Fetal Growth Restriction with Abnormal Doppler',
      'definition': 'Fetal growth restriction with abnormal Doppler is a condition where the fetus does not grow at a normal rate and has abnormal blood flow patterns.',
      'causes': 'Risk factors include placental insufficiency and maternal medical conditions.',
      'symptoms': 'May be indicated by abnormal fetal growth patterns and abnormal Doppler studies. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Growth Restriction'
    },
    {
      'name': 'Placenta Accreta with Conservative Management',
      'definition': 'Placenta accreta with conservative management is a condition where the placenta grows too deeply into the uterine wall, and conservative management is employed to avoid surgical complications.',
      'causes': 'Risk factors include previous uterine surgery and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to complications for the mother and fetus, including severe bleeding and preterm labor.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Accreta'
    },
    {
      'name': 'Uterine Anomalies with Pregnancy Complications',
      'definition': 'Uterine anomalies with pregnancy complications are congenital or acquired abnormalities of the uterus that can lead to complications during pregnancy.',
      'causes': 'Risk factors include family history and certain medical conditions.',
      'symptoms': 'Women may experience menstrual abnormalities, infertility, and recurrent miscarriage. Diagnosis is based on imaging studies and clinical presentation.',
      'effects': 'Can lead to complications during pregnancy, including miscarriage, preterm labor, and fetal growth restriction.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Anomalies'
    },
    {
      'name': 'Cervical Insufficiency with Pessary',
      'definition': 'Cervical insufficiency with pessary is a condition where the cervix is weak and may open prematurely during pregnancy, and a pessary is used to support the cervix.',
      'causes': 'Risk factors include previous cervical surgery, trauma, or congenital anomalies.',
      'symptoms': 'Women may experience painless cervical dilation and preterm labor. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to preterm birth and other complications for the fetus.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Cervical Insufficiency'
    },
    {
      'name': 'Fetal Anemia with Maternal Alloimmunization',
      'definition': 'Fetal anemia with maternal alloimmunization is a condition where the fetus has a low red blood cell count due to maternal alloimmunization.',
      'causes': 'Risk factors include maternal alloimmunization and genetic disorders.',
      'symptoms': 'May be indicated by abnormal fetal heart rate patterns, fetal hydrops, and decreased fetal movement. Diagnosis is based on ultrasound examination and laboratory tests.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Anemia'
    },
    {
      'name': 'Placental Insufficiency with Fetal Monitoring',
      'definition': 'Placental insufficiency with fetal monitoring is a condition where the placenta does not function properly, and fetal monitoring is used to assess fetal well-being.',
      'causes': 'Risk factors include hypertension, diabetes, and placental abruption.',
      'symptoms': 'May be indicated by abnormal fetal heart rate patterns and decreased fetal movement. Diagnosis is based on ultrasound examination and fetal monitoring.',
      'effects': 'Can lead to complications for the fetus, including increased risk of stillbirth and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Placental Insufficiency'
    },
    {
      'name': 'Uterine Rupture with Emergency Surgery',
      'definition': 'Uterine rupture with emergency surgery is a life-threatening condition where the uterus tears, and emergency surgery is required to save the mother and fetus.',
      'causes': 'Risk factors include previous uterine surgery and obstructed labor.',
      'symptoms': 'Women may experience severe abdominal pain, vaginal bleeding, and fetal distress. Diagnosis is based on clinical presentation and ultrasound examination.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Uterine Rupture'
    },
    {
      'name': 'Fetal Macrosomia with Shoulder Dystocia',
      'definition': 'Fetal macrosomia with shoulder dystocia is a condition where the fetus is larger than normal, and shoulder dystocia occurs during delivery.',
      'causes': 'Risk factors include maternal diabetes and obesity.',
      'symptoms': 'May be indicated by estimated fetal weight and ultrasound examination. Diagnosis is based on clinical presentation and delivery complications.',
      'effects': 'Can lead to complications during delivery, including birth trauma and neonatal morbidity.',
      'reference': 'World Health Organization. (2019). Fetal Macrosomia'
    },
    {
      'name': 'Placenta Previa with Antepartum Hemorrhage',
      'definition': 'Placenta previa with antepartum hemorrhage is a condition where the placenta covers the cervix, and antepartum hemorrhage occurs.',
      'causes': 'Risk factors include previous uterine surgery and placenta previa.',
      'symptoms': 'Women may experience vaginal bleeding and abdominal pain. Diagnosis is based on ultrasound examination and clinical presentation.',
      'effects': 'Can lead to severe maternal morbidity and mortality if not promptly treated.',
      'reference': 'American College of Obstetricians and Gynecologists. (2020). Placenta Previa'
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
                  'Disease Information',
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
                  itemCount: diseases.length,
                  itemBuilder: (context, index) {
                    final disease = diseases[index];
                    return Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          disease['name']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(disease['name']!),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Definition: ${disease['definition']!}'),
                                    const SizedBox(height: 10),
                                    Text('Causes and Risk Factors: ${disease['causes']!}'),
                                    const SizedBox(height: 10),
                                    Text('Symptoms and Diagnosis: ${disease['symptoms']!}'),
                                    const SizedBox(height: 10),
                                    Text('Effects on Pregnancy: ${disease['effects']!}'),
                                    const SizedBox(height: 10),
                                    Text('Reference: ${disease['reference']!}'),
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