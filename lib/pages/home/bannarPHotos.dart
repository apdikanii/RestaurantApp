class Banner {
  final String thumbnailUrl;

  Banner({required this.thumbnailUrl});

}
List<Banner> bannarList = List.generate(
  acualData.length,
   (index) => Banner(
    thumbnailUrl: acualData[index]['thumbnailUrl']
    ));
// List<Banner> acualData = [
//   Banner('assets/images/homeimg1.png'),
//   Banner('assets/images/homeimg2.png'),
//   Banner('assets/images/homeimg3.png'),
//   Banner('assets/images/homeimg2.png'),
// ];
List acualData = [
  {
    'thumbnailUrl': 'assets/images/smoothimg1.png'
  },
  {
    'thumbnailUrl': 'assets/images/smoothimg2.png'
  },
  {
    'thumbnailUrl': 'assets/images/smoothimg3.png'
  },
];