import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieReviews(),
    );
  }
}

class MovieReviews extends StatelessWidget {
  const MovieReviews({super.key});

  @override
  Widget build(BuildContext context) {
    //데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Movie Reivews",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0, // 입체감
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_2_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  suffixIcon: Icon(Icons.search),
                  hintText: '영화 제목을 검색해주세요.'),
            ),
          ),
          Divider(
            height: 1,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    String category = dataList[index]['category'];
                    String imgUrl = dataList[index]['imgUrl'];

                    return Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                            imgUrl,
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Container(
                              width: double.infinity,
                              height: 200,
                              color: Colors.black.withOpacity(0.5)),
                          Text(
                            category,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
