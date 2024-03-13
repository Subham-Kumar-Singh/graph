import 'package:flutter/material.dart';
import 'package:graph/components/days.dart';
import 'package:graph/components/graph.dart';

class Graph_Income extends StatefulWidget {
  const Graph_Income({super.key});

  @override
  State<Graph_Income> createState() => _Graph_IncomeState();
}

class _Graph_IncomeState extends State<Graph_Income> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double iconwidth = screenSize.width * 0.05;
    double topmargin = screenSize.height * 0.05;
    double leftmargin = screenSize.width * 0.05;
    double rightmargin = screenSize.width * 0.03;
    double sizedboxheight = screenSize.height * 0.03;
    double iconwidth2 = screenSize.width * 0.1;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 22, 24, 36),
        body: Padding(
          padding: EdgeInsets.only(
            right: iconwidth,
            left: iconwidth,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: topmargin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.arrow_left_rounded,
                        size: iconwidth2,
                        color: Colors.white,
                      )),
                  const Text(
                    'Income',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.equalizer_rounded,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: sizedboxheight,
              ),
              Padding(
                padding: EdgeInsets.only(left: leftmargin, right: rightmargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text("Income",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("1000 (+0.57%)",
                            style: TextStyle(color: Colors.grey, fontSize: 15))
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(0, 0))),
                            onPressed: () {},
                            child: const Icon(
                              Icons.graphic_eq_rounded,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 0,
                        ),
                        TextButton(
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(0, 0))),
                            onPressed: () {},
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: sizedboxheight,
              ),
              Padding(
                padding: EdgeInsets.only(left: leftmargin, right: rightmargin),
                child: Container(
                  height: screenSize.height * 0.068,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20)),
                  // color: Colors.white,
                  child: MyButtonWidget(),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: leftmargin, right: rightmargin),
                  child: Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width,
                    // color: Colors.red,
                    child: GraphComponent(),
                  )),
            ],
          ),
        )
      );
  }
}
