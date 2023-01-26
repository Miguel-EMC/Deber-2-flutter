import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSocial();
  }

  Scaffold _buildSocial() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cv Miguel Muzo"),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              print("Phone");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Soy una persona que siempre trata de superarse en todos los aspectos de mi vida, brindando lo mejor de mi cada día, tanto en el aspecto laboral como personal con objetivos claros."),
            ),
            _buildTitle("Skills"),
            SizedBox(
              height: 10.0,
            ),
            _buildSkillRow("Laravel", 0.75),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow("Express", 0.65),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow("Django", 0.65),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow("Vue.js", 0.70),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow("React.js", 0.75),
            SizedBox(
              height: 20.0,
            ),
            _buildTitle("Experience"),
            SizedBox(
              height: 10.0,
            ),
            _buildExperience(
                "PASANTE EN SISTEMAS", "Información Tecnológica del Ecuador S.A", "2022/04 - 2020/08"),
            _buildExperience(
                "PASANTE DE DESARROLLO FRONTEND", "LATIN TRAILS", "2022/09 - 2022/12"),
            SizedBox(
              height: 20.0,
            ),
            _buildTitle("Education"),
            SizedBox(
              height: 10.0,
            ),
            _buildExperience(
                "Bachillerato General Unificado", "Bachillerato General Unificado", "2013 - 2019"),
            _buildExperience(
                "Desarrollo de Software", "Escuela Politécnica Nacional", "2019 - Present"),
            SizedBox(
              height: 20.0,
            ),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "eduardomuzo123456@gmail.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "+593-999763190",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            _buildTitle(""),
          ],
        ),
      ),
    );
  }

  Row _Social() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(Icons.facebook),
          onPressed: () {},
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(Icons.email),
          onPressed: () {},
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  ListTile _buildExperience(String title, String company, String date) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$company - $date"),
      trailing: Icon(Icons.check_box, color: Colors.green),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        Container(
          width: 80.0,
          child: Image.asset('assets/miguel.jpg'),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Miguel Muzo",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            Text("Full Stack Developer"),
            Row(
              children: <Widget>[
                Icon(Icons.location_on, color: Colors.grey, size: 16.0),
                Text("Quito, Ecuador", style: TextStyle(color: Colors.grey))
              ],
            )
          ],
        )
      ],
    );
  }
}
