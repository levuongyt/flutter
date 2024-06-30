import 'package:flutter/material.dart';
import 'package:le_minh_vuong_flutter_10/bai_kiem_tra/resources/image_app.dart';

class GiaoDien extends StatefulWidget {
  const GiaoDien({super.key});

  @override
  State<GiaoDien> createState() => _GiaoDienState();
}

class _GiaoDienState extends State<GiaoDien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeader(),
              buildSearch(),
              buildListLoai(),
              nearYouHeader(),
              listHouseNgang(),
              bestForYouHeader(),
              listHouse(),
            ],
          ),
        ),
      ),
    );
  }

  Column bestForYouHeader() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best for you',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                'See more',
                style: TextStyle(fontSize: 12, color: Color(0xff858585)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Column nearYouHeader() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Near form you',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                'See more',
                style: TextStyle(fontSize: 12, color: Color(0xff858585)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Expanded listHouse() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              SizedBox(
                height: 75,
                width: 79,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(ImageApp.imageOrchadHouse)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Orchad House',
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text(
                    'Rp. 2.500.000.000 / Year',
                    style: TextStyle(color: Color(0xff0A8ED9), fontSize: 13),
                  ),
                  Row(
                    children: [
                      Image.asset(ImageApp.imageBedroom, height: 14),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '6 Bedroom',
                        style:
                            TextStyle(color: Color(0xff858585), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset(ImageApp.imageBathroom, height: 16),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('4 Bathroom',
                          style: TextStyle(
                              color: Color(0xff858585), fontSize: 13)),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 75,
                width: 79,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(ImageApp.imageHolliesHouse)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The Hollies House',
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text(
                    'Rp. 2.000.000.000 / Year',
                    style: TextStyle(color: Color(0xff0A8ED9), fontSize: 13),
                  ),
                  Row(
                    children: [
                      Image.asset(ImageApp.imageBedroom, height: 14),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '5 Bedroom',
                        style:
                            TextStyle(color: Color(0xff858585), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset(ImageApp.imageBathroom, height: 16),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('2 Bathroom',
                          style: TextStyle(
                              color: Color(0xff858585), fontSize: 13)),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 75,
                width: 79,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(ImageApp.imageOrchadHouse)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Orchad House',
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text(
                    'Rp. 2.500.000.000 / Year',
                    style: TextStyle(color: Color(0xff0A8ED9), fontSize: 13),
                  ),
                  Row(
                    children: [
                      Image.asset(ImageApp.imageBedroom, height: 14),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '6 Bedroom',
                        style:
                            TextStyle(color: Color(0xff858585), fontSize: 13),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset(ImageApp.imageBathroom, height: 16),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('4 Bathroom',
                          style: TextStyle(
                              color: Color(0xff858585), fontSize: 13)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Column listHouseNgang() {
    return Column(
      children: [
        SizedBox(
          height: 272,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 222,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      // Image.asset('assets/images/imageHouse.png',fit: BoxFit.cover,)
                      Image.asset(
                        ImageApp.imageDreamHouse,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Container(
                          width: 78,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[400],
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageApp.imageVitri,
                                height: 13,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '1.8 km',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                          left: 15,
                          bottom: 55,
                          child: Text(
                            'Dreamsville House',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                      const Positioned(
                          left: 15,
                          bottom: 40,
                          child: Text(
                            'Jl. Sultan Iskandar Muda',
                            style: TextStyle(
                                color: Color(0xffD7D7D7), fontSize: 13),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 237,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      // Image.asset('assets/images/imageHouse.png',fit: BoxFit.cover,)
                      Image.asset(
                        ImageApp.imageAscotHouse,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Container(
                          width: 78,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageApp.imageVitri,
                                height: 13,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '1.8 km',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                          left: 20,
                          bottom: 40,
                          child: Text(
                            'Ascot House',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )),
                      const Positioned(
                          left: 20,
                          bottom: 20,
                          child: Text(
                            'Jl. Sultan Iskandar Muda',
                            style: TextStyle(
                                color: Color(0xffD7D7D7), fontSize: 13),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Column buildListLoai() {
    return Column(
      children: [
        SizedBox(
          height: 37,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffA0DAFB),
                  //   color: Color.alphaBlend( Color(0xffA0DAFB),Color(0xff0A8ED9)),
                ),
                child: const Center(
                    child: Text(
                  'House',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF7F7F7),
                ),
                child: const Center(
                    child: Text(
                  'Apartment',
                  style: TextStyle(color: Color(0xff858585), fontSize: 15),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF7F7F7),
                ),
                child: const Center(
                    child: Text(
                  'Hotel',
                  style: TextStyle(color: Color(0xff858585), fontSize: 15),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF7F7F7),
                ),
                child: const Center(
                    child: Text(
                  'Villa',
                  style: TextStyle(color: Color(0xff858585), fontSize: 15),
                )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF7F7F7),
                ),
                child: const Center(
                    child: Text(
                  'Const',
                  style: TextStyle(color: Color(0xff858585), fontSize: 15),
                )),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Column buildSearch() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search address or near you',
                    hintStyle: TextStyle(color: Color(0xff858585)),
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Color(0xFFF7F7F7),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                  color: const Color(0xFFA0DAFB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Image.asset(
                  ImageApp.imageVector1,
                  width: 17,
                )),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  Column buildHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 13, color: Color(0xff838383)),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Jakarta',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        ImageApp.imageV,
                        height: 7,
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                ImageApp.imageNotification,
                width: 25,
                height: 25,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
