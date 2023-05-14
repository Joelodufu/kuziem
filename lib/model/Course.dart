class Course {
  final bool isDone;

  final double price;
  final DateTime startTime;
  final String title,
      id,
      creator,
      book,
      duration,
      introVideo,
      about,
      level,
      certification,
      category,
      affiliation;
  final List<String> images, colaborators, classes, requirements;
  final List<Map<String, String>> registeredStudents;

  Course(
      {required this.startTime,
      required this.title,
      required this.introVideo,
      required this.id,
      required this.registeredStudents,
      required this.images,
      required this.creator,
      required this.book,
      required this.duration,
      required this.colaborators,
      required this.isDone,
      required this.classes,
      required this.about,
      required this.price,
      required this.level,
      required this.certification,
      required this.affiliation,
      required this.category,
      required this.requirements});
}

List<Course> demoCourses = [
  Course(
      title: "Introduction to data analysis",
      id: "0001",
      startTime: DateTime.parse("2023-04-05"),
      introVideo: "https://www.youtube.com/watch?v=_g5roKHj95o",
      category: "digital skills",
      price: 12000,
      registeredStudents: [
        {
          "id": "oo1",
          "name": "Anderson Jonhn",
          "image": "assets/images/ekowoicho.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/profile.jpeg"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "005",
          "name": "Joshua Adegbite",
          "image": "assets/images/ekowoicho.jpg"
        },
      ],
      isDone: true,
      images: [
        "assets/images/dataanalysis1.jpg",
        "assets/images/dataanalysis2.jpeg",
        "assets/images/dataanalysis3.jpeg",
        "assets/images/dataanalysis4.jpeg",
        "assets/images/dataanalysis5.jpg",
        "assets/images/dataanalysis7.jpeg"
      ],
      creator: "Sunday Agbenu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: [
        "classid1"
            "classid2"
            "classid3"
      ],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Electronic Technology",
      startTime: DateTime.parse("2023-04-05"),
      id: "0002",
      price: 12000,
      category: "engineering",
      introVideo: "https://www.youtube.com/watch?v=XbLriBntePk",
      registeredStudents: [
        {
          "id": "oo1",
          "name": "Anderson Jonhn",
          "image": "assets/images/joel2.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "005",
          "name": "Joshua Adegbite",
          "image": "assets/images/ekowoicho.jpg"
        },
      ],
      isDone: true,
      images: [
        "assets/images/electronictech1.jpeg",
        "assets/images/electronictech2.jpeg",
        "assets/images/electronictech3.png",
        "assets/images/electronictech4.jpeg",
        "assets/images/electronictech5.jpeg",
        "assets/images/electronictech6.jpg",
        "assets/images/electronictech7.jpeg",
      ],
      creator: "Sunday Agbenu",
      book: "h5ttt/bbok.com",
      duration: "3 Weeks",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Digital Painting",
      startTime: DateTime.parse("2023-04-05"),
      id: "0003",
      isDone: true,
      category: "digital skills",
      introVideo:
          "https://www.youtube.com/watch?v=WUZ5V2aWJzg&list=PLtG4P3lq8RHHBiU_VqcY_L9T2iFDeCUJH",
      registeredStudents: [
        {
          "id": "oo1",
          "name": "Anderson Jonhn",
          "image": "assets/images/joel2.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "005",
          "name": "Joshua Adegbite",
          "image": "assets/images/ekowoicho.jpg"
        },
      ],
      price: 12000,
      images: [
        "assets/images/digitalpainting1.jpeg",
        "assets/images/digitalpainting2.jpg",
        "assets/images/digitalpainting3.jpg",
        "assets/images/digitalpainting4.jpg",
        "assets/images/digitalpainting5.jpg",
        "assets/images/digitalpainting6.jpg",
        "assets/images/digitalpainting7.jpeg",
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Android App Development",
      startTime: DateTime.parse("2023-04-05"),
      id: "0004",
      category: "digital skills",
      introVideo: "https://www.youtube.com/watch?v=AhUL5tHF3uc",
      registeredStudents: [
        {
          "id": "oo1",
          "name": "Anderson Jonhn",
          "image": "assets/images/joel2.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "005",
          "name": "Joshua Adegbite",
          "image": "assets/images/ekowoicho.jpg"
        },
      ],
      isDone: true,
      price: 12000,
      images: [
        "assets/images/androiddev.jpg",
        "assets/images/androiddev1.jpeg",
        "assets/images/androiddev2.jpeg",
        "assets/images/androiddev3.png",
        "assets/images/androiddev4.jpeg",
        "assets/images/androiddev5.jpeg",
        "assets/images/androiddev6.jpeg",
        "assets/images/androiddev7.png",
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using Dart Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Introduction to data analysis",
      startTime: DateTime.parse("2023-04-05"),
      id: "0001",
      category: "digital skills",
      introVideo: "https://www.youtube.com/watch?v=SfE3aO3LWi0",
      registeredStudents: [
        {
          "id": "oo1",
          "name": "Anderson Jonhn",
          "image": "assets/images/joel2.jpg"
        },
        {
          "id": "002",
          "name": "Joseph Abraham",
          "image": "assets/images/joellee.jpg"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "003",
          "name": "Preciouse Afolabi",
          "image": "assets/images/joel1.JPG"
        },
        {
          "id": "004",
          "name": "Alade Adeniyi ",
          "image": "assets/images/joel3.JPG"
        },
        {
          "id": "005",
          "name": "Joshua Adegbite",
          "image": "assets/images/ekowoicho.jpg"
        },
      ],
      isDone: false,
      price: 12000,
      images: [
        "assets/images/dataanalysis1.jpg",
        "assets/images/dataanalysis2.jpeg",
        "assets/images/dataanalysis3.jpeg",
        "assets/images/dataanalysis4.jpeg",
        "assets/images/dataanalysis5.jpg",
        "assets/images/dataanalysis7.jpeg"
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
];
