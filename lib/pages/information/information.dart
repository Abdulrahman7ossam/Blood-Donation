import 'package:blood_donation/components/backgroundGradient.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BackgroundGradient(200.0),
            ExpansionTile(
              title: Text(
                'Facts About Blood and Your Blood Donation:',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      - The average adult has 10 to 12 pints of blood in their body;
      - Your one donation can save up to 3 lives;
      - No valid substitute for blood - so when you need it, the only possible way to get it is from other human beings;
      - Any day, these facts could mean the difference between life and death;
      - You cannot get AIDS or any other disease by giving blood;
      - You can give whole blood every 90 days, single platelets every 48 hours;
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'What to expect when you donate:',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      1- Registration: Confidential information is gathered which will positively identify you and each of your donations.
      2- Interview: A medical history is taken in a private booth. You will be asked some very personal questions. Please do not be offended. We are required to ask them.
      3- Mini-Physical: Current pulse, blood pressure, and hemoglobin levels are determined.
      4- Phlebotomy: You will be seated in a reclining donor chair. A tourniquet will be applied to your arm and a suitable vein located. The site will be cleaned with an antiseptic scrub containing iodine. (Please tell us if you are allergic to iodine as we have alternate methods.) A collection needle will be gently inserted into your vein and the blood collected in a sterile attached bag for 5 to 15 minutes. When the donation is completed, you will be asked to hold a gauze over the site while keeping your arm elevated. Finally a pressure bandage will be applied to the site and you may rest and enjoy some refreshments.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Care After Donating:',
                style: TextStyle(fontSize: 20, height: 1),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      1 - Relax and enjoy the refreshments provided. You normally have 10 to 12 pints of blood in your body and have just donated about one. It will only take a few minutes before your body adjusts to the change. The fluid volume will be replaced in a few days, but the red cells will take several weeks. Remember, we have not taken enough to hurt you.
      2 - If you smoke, do not do so for at least 30 minutes. Doing so before then may make you lightheaded.
      3 - Be careful of alcoholic beverages. If you do drink any, the effect will be intensified because of your donation.
      4 - Drink plenty of non-alcoholic beverages. The more you drink, the faster the fluid volume of your blood will be replaced. We recommend 1/2 to 1 extra gallon in the next 24 hours.
      5 - Do not remove the bandage over the site for at least 4 hours. This gives it time to heal. If you notice bleeding before then, please raise your arm up and apply a new bandage just as was done after your donation.
      6 - Avoid strenuous activity for the rest of the day. Do not push, pull, or lift any objects greater than 25 pounds.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Basic Requirements:',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      1 - Be in generally good health and feeling well.
      2 - Be at least 18 years of age; upper age 60.
      3 - Weigh at least 110 pounds (50kg).
      4 - Pulse: 80 to 100 beats/min and regular.
      5 - Temperature: Should not exceed 99.5 (37.5c)
      6 - Skin: the venipuncture site should be free of any lesion or scar of needle pricks indicative of addiction to narcotics or frequent Blood donation (as in the case of professional Blood donors).
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Donation Frequency (may vary):',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      1 - You will be deferred permanently from donation if you have ever tested positive for HIV.
      2 - You have ever injected yourself with drugs or other substances not prescribed by a physician.
      3 - You have hemophilia or another Blood clotting disorder and received clotting factor concentrate.
      4 - You have been held in a correctional facility (including jails, prisons and/or detention centers) for more than 72 hours in the last 12 months.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'What are the benefits and risks?',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      Autologous blood donation is most useful for surgical procedures where blood is commonly used and for patients for whom blood donation is safe. Surgeon will be able to tell how likely it is that you might be transfused during a specific procedure.
      Many surgical procedures do not usually require blood transfusions and so autologous blood donation is not necessary.
      Although many people can donate blood safely for themselves, blood donation may put patients with heart and lung disease or anemia at risk for complications. Patients with these medical problems may experience chest pain (angina) or shortness of breath, or increased anemia as a result of donating blood.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Special considerations before coming in to donate:',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      1 - If you have a cold, have taken antibiotics within the last 48 hours (except for prophylactic use) or have had dental work within the last 48 hours, you will not be able to donate and should reschedule your appointment.
      2 - Blood donation may worsen some seizure disorders or heart conditions. You may not donate if you have had seizures.
      3 - You should inform the nurse at the time of the interview if you have experienced any of these problems.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Donation Guidelines:',
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    '''
      You must have a medical order from your doctor prior to the first donation.

      You must plan ahead (3-6 weeks) so there will be enough time to donate the needed number of units.

      You may give a unit of blood as often as once a week.

      Donations should be discontinued at least a week before surgery. You cannot be an autologous donor if you are anemic. Your doctor will probably recommend that you take an oral iron supplement throughout the donation period.
                ''',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
