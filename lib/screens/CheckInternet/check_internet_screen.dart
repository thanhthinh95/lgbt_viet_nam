import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/constants/constants.dart';

class CheckInternet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckInternetState();
  }
}

class _CheckInternetState extends State<CheckInternet> {
  bool _isVisible = false;
  Connectivity _connectivity;
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    _connectivity = Connectivity();

    check().then((event) => checkStatusConnectivity(event));
    _streamSubscription = _connectivity.onConnectivityChanged
        .listen((event) => checkStatusConnectivity(event));
  }

  Future<ConnectivityResult> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult;
  }

  void checkStatusConnectivity(event) {
    switch (event) {
      case ConnectivityResult.none:
        _isVisible = true;
        break;
      case ConnectivityResult.mobile:
        _isVisible = false;
        break;
      case ConnectivityResult.wifi:
        _isVisible = false;
        break;
      default:
        _isVisible = false;
        break;
    }

    setState(() {
      _isVisible = _isVisible;
    });

    // print('_isVisible: ' + _isVisible.toString());
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Stack(children: [
        Container(
          color: background_notify.withOpacity(0.45),
        ),
        Container(
          height: 40.0,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            top: distance_value * 8,
            left: distance_value * 4,
            right: distance_value * 4,
          ),
          padding: padding_value,
          decoration: BoxDecoration(
            color: background_notify,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Stack(
            children: [
              Container(
                padding: padding_value,
                child: Text(
                  no_internet,
                  style: text_notify_style,
                ),
              ),
              Positioned(
                right: 5.0,
                top: 6.0,
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  alignment: Alignment.centerRight,
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
