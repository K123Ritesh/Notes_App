import 'package:flutter/material.dart';
import 'package:notes_app/Custom_Widgets/Sem_card.dart';
import 'package:notes_app/Custom_Widgets/Subject_View.dart';

class Semester_Page extends StatefulWidget {
  final int sub_code;
  const Semester_Page({super.key, required this.sub_code});

  @override
  State<Semester_Page> createState() => _Semester_PageState(sub_code);
}

class _Semester_PageState extends State<Semester_Page> {
  final int sub_code;
  Subject_Data helper = Subject_Data();

  _Semester_PageState(this.sub_code);
  @override
  Widget build(BuildContext context) {
    return Semester_List(
        course_Name: helper.all_sub[sub_code][0][0],
        Buttons_function: [
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][1],
                        sem_Name: "Semester 1")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][2],
                        sem_Name: "Semester 2")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][3],
                        sem_Name: "Semester 3")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][4],
                        sem_Name: "Semester 4")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][5],
                        sem_Name: "Semester 5")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][6],
                        sem_Name: "Semester 6")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][7],
                        sem_Name: "Semester 7")));
          },
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Sem1(
                        list: helper.all_sub[sub_code][8],
                        sem_Name: "Semester 8")));
          },
        ]);
  }
}

class Sem1 extends StatelessWidget {
  List<String> list;
  final String sem_Name;
  Sem1({super.key, required this.list, required this.sem_Name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Column(
          children: [Text(sem_Name)],
        )),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MyContainer11(
                subjectName: list[index], url: list[list.length - index - 1]);
          },
          itemCount: (0.5 * list.length).toInt(),
        ));
  }
}

class Semester_List extends StatelessWidget {
  final String course_Name;
  final List<VoidCallback> Buttons_function;
  const Semester_List({
    super.key,
    required this.course_Name,
    required this.Buttons_function,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course_Name),
      ),
      body: ListView(children: [
        SizedBox(height: 10),
        MyContainer(subjectName: "Semester 1", onPressed: Buttons_function[0]),
        MyContainer(subjectName: "Semester 2", onPressed: Buttons_function[1]),
        MyContainer(subjectName: "Semester 3", onPressed: Buttons_function[2]),
        MyContainer(subjectName: "Semester 4", onPressed: Buttons_function[3]),
        MyContainer(subjectName: "Semester 5", onPressed: Buttons_function[4]),
        MyContainer(subjectName: "Semester 6", onPressed: Buttons_function[5]),
        MyContainer(subjectName: "Semester 7", onPressed: Buttons_function[6]),
        MyContainer(subjectName: "Semester 8", onPressed: Buttons_function[7])
      ]),
    );
  }
}

// All Data's of a page

class Subject_Data {
  final List<List<List<Map<String, String>>>> all_sub1 = [
    [
      [
        {"Ritesh": "rakesh"},
      ],
      []
    ],
  ];
  final List<List<List<String>>> all_sub = [
    [
      ["B.TECH(CSE)"],
      // 1st Semester
      [
        "Mathematics I",
        "Physics I",
        "Chemistry",
        "Introduction to Programming",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "Syllabus.pdf"
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Environmental Science",
        "Data Structures",
        "Digital Logic Design",
        "Basic Electronics",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "Syllabus.pdf",
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Database Management Systems",
        "Object-Oriented Programming",
        "Computer Organization and Architecture",
        "Discrete Mathematics",
        "Software Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Operating Systems",
        "Computer Networks",
        "Design and Analysis of Algorithms",
        "Theory of Computation",
        "System Software",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 5th Semester
      [
        "Computer Graphics",
        "Artificial Intelligence",
        "Web Technologies",
        "Microprocessors and Interfacing",
        "Data Science",
        "Information Security",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Machine Learning",
        "Distributed Systems",
        "Cloud Computing",
        "Internet of Things",
        "Mobile Computing",
        "Software Testing",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 7th Semester
      [
        "Big Data Analytics",
        "Natural Language Processing",
        "Blockchain Technology",
        "Cybersecurity",
        "Human-Computer Interaction",
        "Wireless Communication",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "Project Management",
        "Image Processing",
        "Parallel and Distributed Computing",
        "Digital Signal Processing",
        "Network Security",
        "E-Commerce",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ]
    ],
    [
      ["B.TECH(IT)"],
      // 1st Semester
      [
        "Mathematics I",
        "Physics I",
        "Computer Programming",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Basic Electrical Engineering",
        "Engineering Materials",
        "Environmental Studies"
            "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf"
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Computer Architecture",
        "Data Structures and Algorithms",
        "Discrete Mathematics",
        "Object-Oriented Programming",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Computer Graphics",
        "Design of Algorithms",
        "Operating Systems",
        "Theory of Computation",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
      ],
      // 5th Semester
      [
        "Web Technologies",
        "Microprocessors",
        "Computer Networks",
        "Software Engineering",
        "Database Management Systems",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Software Testing",
        "Artificial Intelligence",
        "Mobile Computing",
        "Information Security",
        "Human-Computer Interaction",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
      ],
      // 7th Semester
      [
        "Cloud Computing",
        "Data Science",
        "Internet of Things",
        "Big Data Analytics",
        "Machine Learning",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "Project Management",
        "Blockchain Technology",
        "Cybersecurity",
        "Natural Language Processing",
        "Image Processing",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
    ],
    [
      ["B.TECH(ECE)"],
      [
        "Mathematics I",
        "Physics I",
        "Chemistry",
        "Introduction to Programming",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Environmental Science",
        "Electronic Devices and Circuits",
        "Digital Logic Design",
        "Basic Electrical Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Electromagnetic Field Theory",
        "Analog Electronics",
        "Signals and Systems",
        "Network Theory",
        "Digital Electronics",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Control Systems",
        "Microprocessors and Microcontrollers",
        "Digital Communication",
        "Electronic Measurement and Instrumentation",
        "Power Electronics",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 5th Semester
      [
        "VLSI Design",
        "Digital Signal Processing",
        "Antenna and Wave Propagation",
        "Embedded Systems",
        "Microwave Engineering",
        "Optical Communication",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Wireless Communication",
        "Information Theory and Coding",
        "Satellite Communication",
        "Computer Networks",
        "Data Compression",
        "Adaptive Signal Processing",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 7th Semester
      [
        "Mobile Communication",
        "Radar Engineering",
        "Nanoelectronics",
        "Biomedical Instrumentation",
        "Robotics and Automation",
        "Artificial Intelligence",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "Project Management",
        "Image and Video Processing",
        "Telecommunication Switching Networks",
        "Biometric Systems",
        "Embedded Robotics",
        "Internet of Things",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // Add more semesters and subjects as needed
    ],
    [
      ["B.Tech(ME)"],
      // 1st Semester
      [
        "Mathematics I",
        "Physics I",
        "Chemistry",
        "Introduction to Mechanical Engineering",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Environmental Science",
        "Engineering Mechanics",
        "Workshop Practice",
        "Basic Electrical and Electronics Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Strength of Materials",
        "Fluid Mechanics",
        "Thermodynamics",
        "Manufacturing Processes",
        "Machine Drawing",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Theory of Machines",
        "Heat Transfer",
        "Materials Science and Engineering",
        "Engineering Metrology",
        "Applied Numerical Methods",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 5th Semester
      [
        "Design of Machine Elements",
        "Industrial Engineering",
        "Measurement and Instrumentation",
        "Automobile Engineering",
        "Power Plant Engineering",
        "Operations Research",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Refrigeration and Air Conditioning",
        "Production Planning and Control",
        "CAD/CAM",
        "Mechatronics",
        "Gas Dynamics",
        "Finite Element Analysis",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 7th Semester
      [
        "Fluid Power Engineering",
        "Renewable Energy Systems",
        "Quality Control and Reliability",
        "Robotics",
        "Industrial Robotics",
        "Project Management",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "Automotive Engineering",
        "Composite Materials",
        "Advanced Manufacturing Technology",
        "Power System Engineering",
        "Entrepreneurship Development",
        "Total Quality Management",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // Add more semesters and subjects as needed
    ],
    [
      ["B.Tech(EE)"],
      // 1st Semester
      [
        "Mathematics I",
        "Physics I",
        "Chemistry",
        "Introduction to Electrical Engineering",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Environmental Science",
        "Electrical Circuits",
        "Digital Logic Design",
        "Basic Electronics",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Electromagnetic Theory",
        "Electrical Machines",
        "Signals and Systems",
        "Network Analysis and Synthesis",
        "Electrical Measurements",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Power Systems",
        "Control Systems",
        "Electrical and Electronic Instrumentation",
        "Power Electronics",
        "Electromechanical Energy Conversion",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 5th Semester
      [
        "Power System Analysis",
        "Renewable Energy Systems",
        "Electrical Drives and Traction",
        "Digital Signal Processing",
        "Microprocessors and Microcontrollers",
        "High Voltage Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Power System Operation and Control",
        "Electrical Distribution Systems",
        "Industrial Automation",
        "Digital Image Processing",
        "Utilization of Electrical Energy",
        "Electrical Machine Design",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 7th Semester
      [
        "Power System Protection and Switchgear",
        "Flexible AC Transmission Systems",
        "Energy Audit and Management",
        "Electric Vehicles",
        "Power Quality and Harmonics",
        "Smart Grids",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "High Voltage Direct Current Transmission",
        "Power System Planning",
        "Optimization Techniques",
        "Renewable Energy Integration",
        "Internet of Things in Power Systems",
        "Final Year Project",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // Add more semesters and subjects as needed
    ],
    [
      ["B.Tech(CE)"],
      // 1st Semester
      [
        "Mathematics I",
        "Physics I",
        "Chemistry",
        "Introduction to Civil Engineering",
        "Engineering Graphics",
        "Communication Skills",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 2nd Semester
      [
        "Mathematics II",
        "Physics II",
        "Environmental Science",
        "Building Materials and Construction",
        "Structural Analysis",
        "Basic Electrical and Electronics Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 3rd Semester
      [
        "Mathematics III",
        "Mechanics of Solids",
        "Surveying",
        "Fluid Mechanics",
        "Concrete Technology",
        "Transportation Engineering I",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 4th Semester
      [
        "Mathematics IV",
        "Structural Analysis II",
        "Geotechnical Engineering I",
        "Hydraulics and Hydraulic Machines",
        "Advanced Surveying",
        "Transportation Engineering II",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 5th Semester
      [
        "Design of Reinforced Concrete Structures",
        "Geotechnical Engineering II",
        "Environmental Engineering I",
        "Foundation Engineering",
        "Construction Planning and Management",
        "Water Resources Engineering",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 6th Semester
      [
        "Design of Steel Structures",
        "Geotechnical Engineering III",
        "Environmental Engineering II",
        "Estimation, Costing, and Valuation",
        "Remote Sensing and GIS Applications",
        "Structural Dynamics",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 7th Semester
      [
        "Structural Design and Drawing",
        "Geotechnical Engineering IV",
        "Environmental Engineering III",
        "Project Management and Contracts",
        "Transportation Planning and Management",
        "Finite Element Analysis",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // 8th Semester
      [
        "Advanced Construction Techniques and Equipment",
        "Professional Ethics and Disaster Management",
        "Pavement Design and Construction",
        "Urban Planning and Management",
        "Earthquake Resistant Design of Structures",
        "Final Year Project",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "Syllabus.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf",
        "offer_Letter.pdf"
      ],
      // Add more semesters and subjects as needed
    ]
  ];
}
