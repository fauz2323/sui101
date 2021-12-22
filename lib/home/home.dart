import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  late WebViewController controller;
  back() async {
    if (await controller.canGoBack()) {
      controller.goBack();
    } else {
      Get.defaultDialog(
        title: "Do you want to exit ?",
        content: Column(),
        confirm: ElevatedButton(
          onPressed: () {
            SystemNavigator.pop();
          },
          child: Text("Yes"),
        ),
        cancel: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('No'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () => back(),
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color(0xff1c1c1ce6),
          //   leading: IconButton(
          //       onPressed: () => back(), icon: Icon(Icons.arrow_back_ios)),
          //   title: Text("Sui101"),
          //   centerTitle: true,
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.only(right: 10),
          //       child: IconButton(
          //           onPressed: () {
          //             controller.reload();
          //           },
          //           icon: Icon(Icons.replay_outlined)),
          //     )
          //   ],
          // ),
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              children: [
                Container(),
                Expanded(
                  child: WebView(
                    initialUrl: "https://www.sui101.com/index.php",
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (controller) {
                      this.controller = controller;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
