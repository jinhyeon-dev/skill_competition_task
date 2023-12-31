import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: First(),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Second()),
                  );
                },
                child: Image.asset('assets/logo.png', width: 80),
              ),
              const Text(
                "글로벌 렌터카",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 14),
                                width: 140,
                                height: 10,
                                color: Colors.lightBlue.shade100,
                              ),
                              Text(
                                "글로벌숙련기술원 ",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "고객님",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "안녕하세요?",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          const Icon(Icons.notifications_none),
                          Container(
                            margin: const EdgeInsets.only(left: 14),
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "99",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 6,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade600),
                    ),
                    child: const Center(
                      child: Text(
                        "10하7569",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.blue.shade100,
                            Colors.purple.shade100,
                          ],
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(250)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 60),
                      width: 300,
                      height: 180,
                      child: Image.asset('assets/car1.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "POLLSTAR2(10하7569)",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "와 함께",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              "기분좋은 하루 되세요",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Three()),
                              );
                            },
                            child: Container(
                              width: 60,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                BorderRadius.all(Radius.circular(3)),
                              ),
                              child: const Center(
                                child: Text(
                                  "다른차량",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 450,
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(20, 30, 20, 20),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "최근 결제 내역(2023년 06월)",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(
                                            context,
                                            (context),
                                          );
                                        },
                                        child: const Icon(Icons.close),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Divider(
                                    color: Colors.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "POLLSTAR2(190허 0001)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "POLLSTAR2(190허 0002)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "POLLSTAR2(190허 0003)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "POLLSTAR2(190허 0004)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "POLLSTAR2(190허 0005)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "K8(190허 1000)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "540,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "미납금액",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "0원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "과태료",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "182,000원",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Divider(
                                          color: Colors.grey.shade300,
                                          thickness: 1,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "납부할 금액",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "578,000원",
                                              style: TextStyle(
                                                color: Colors.blue.shade800,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.lightBlue.shade400,
                            Colors.indigo.shade400,
                          ],
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(3)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "POLLSTAR2(10하7569)",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "578,000원",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.deepPurpleAccent.shade200,
                          Colors.purple.shade200,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "계약기간",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "21.04.21 ~ 21.04.20",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "글로벌숙련기술원 고객님 ",
                          style: TextStyle(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "결제정보",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "렌탈료 최근 결제내역(06월)",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "2,502,000원",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 80,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "자세히보기",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.grey.shade600,
                                                size: 18),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "미납 과태료",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "182,000원",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 80,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "자세히보기",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.grey.shade600,
                                                size: 18),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "07월 렌탈료 결제 예정 금액",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "2,648,000원",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 80,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "자세히보기",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward,
                                                color: Colors.grey.shade600,
                                                size: 18),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "서비스 바로가기",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.find_in_page_outlined,
                                      size: 30, color: Colors.blue.shade800),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Text(
                                    "과태료\n조회",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.place_outlined,
                                      size: 30, color: Colors.blue.shade800),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Text(
                                    "정비소\n찾기",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.redeem_outlined,
                                      size: 30, color: Colors.blue.shade800),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Text(
                                    "쿠폰",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "스마트홈정비",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "엔진오일, 배터리 교체는 물론 차량점검까지\n스마트홈정비로 쉽게 신청하고 집에서\n편안하게 받으세요.",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.handyman_outlined,
                                  size: 80, color: Colors.grey.shade300),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.lightBlue.shade200,
                                    Colors.indigo.shade800,
                                  ],
                                ),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  "신청하기",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈"),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit_document), label: "계약"),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_outlined), label: "내차"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_crash_outlined), label: "사고/출동"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "관리"),
          ],
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.indigo,
                  Colors.deepPurple,
                ],
              ),
            ),
          ),
          centerTitle: false,
          leading: InkWell(
            onTap: () {
              Navigator.pop(
                context,
                (context),
              );
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
          ),
          title: const Text(
            "차량목록",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Stack(
                children: [
                  const Icon(Icons.notifications_none, color: Colors.white),
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "99",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search, color: Colors.blue.shade800),
                        Text(
                          "차량 검색",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Row(
                        children: [
                          Text(
                            "차량을 검색하실 수 있습니다.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 30,
                      color: Colors.grey.shade300,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("차량을 검색해 보세요"),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "POLLSTAR2(190허0005)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Image.asset('assets/car2.png', fit: BoxFit.cover),
                                ),
                                Container(
                                  width: 60,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text("계약자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("운전자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("계약기간", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("렌탈금액", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("글로벌숙련기술진흥원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("숙련기술 진흥부 홍길동", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("21.12.03 ~ 26.12.04", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("578,000원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
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
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "POLLSTAR2(190허0005)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Image.asset('assets/car2.png', fit: BoxFit.cover),
                                ),
                                Container(
                                  width: 60,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text("계약자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("운전자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("계약기간", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("렌탈금액", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("글로벌숙련기술진흥원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("숙련기술 진흥부 홍길동", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("21.12.03 ~ 26.12.04", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("578,000원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
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
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "POLLSTAR2(190허0005)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Image.asset('assets/car2.png', fit: BoxFit.cover),
                                ),
                                Container(
                                  width: 60,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text("계약자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("운전자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("계약기간", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("렌탈금액", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("글로벌숙련기술진흥원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("숙련기술 진흥부 홍길동", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("21.12.03 ~ 26.12.04", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("578,000원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
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
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "POLLSTAR2(190허0005)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  child: Image.asset('assets/car2.png', fit: BoxFit.cover),
                                ),
                                Container(
                                  width: 60,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text("계약자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("운전자", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("계약기간", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("렌탈금액", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text("글로벌숙련기술진흥원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("숙련기술 진흥부 홍길동", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("21.12.03 ~ 26.12.04", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("578,000원", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),),
                                        ],
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
