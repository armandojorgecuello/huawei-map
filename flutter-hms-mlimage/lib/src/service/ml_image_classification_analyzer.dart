/*
    Copyright 2021-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0
        
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:huawei_ml_image/src/common/base_image_analyzer.dart';
import 'package:huawei_ml_image/src/common/constants.dart';
import 'package:huawei_ml_image/src/common/method.dart';
import 'package:huawei_ml_image/src/request/ml_classification_analyzer_setting.dart';
import 'package:huawei_ml_image/src/result/ml_image_classification.dart';

class MLImageClassificationAnalyzer
    implements BaseImageAnalyzer<dynamic, MLClassificationAnalyzerSetting> {
  static const int TYPE_LOCAL = 0;
  static const int TYPE_REMOTE = 1;

  late MethodChannel _methodChannel;

  MLImageClassificationAnalyzer() {
    _methodChannel = MethodChannel("$baseChannel.classification");
  }

  @override
  Future<List<MLImageClassification>> analyseFrame(
      MLClassificationAnalyzerSetting setting) async {
    List res = json.decode(
        await _methodChannel.invokeMethod(syncClassification, setting.toMap()));
    return res.map((e) => MLImageClassification.fromJson(e)).toList();
  }

  @override
  Future<List<MLImageClassification>> asyncAnalyseFrame(
      MLClassificationAnalyzerSetting setting) async {
    List res = json.decode(await _methodChannel.invokeMethod(
        asyncClassification, setting.toMap()));
    return res.map((e) => MLImageClassification.fromJson(e)).toList();
  }

  @override
  Future<bool> stop() async {
    return await _methodChannel.invokeMethod(mStop);
  }

  Future<int> getAnalyzerType() async {
    return await _methodChannel.invokeMethod(mGetAnalyzerType);
  }
}
