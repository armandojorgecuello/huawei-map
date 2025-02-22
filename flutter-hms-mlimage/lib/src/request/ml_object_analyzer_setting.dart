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

class MLObjectAnalyzerSetting {
  static const int TYPE_PICTURE = 0;

  static const int TYPE_VIDEO = 1;

  String path;
  bool? allowMultiResults;
  bool? allowClassification;
  int? analyzerType;

  factory MLObjectAnalyzerSetting.create(
      {required String path,
      bool? allowMultiResults,
      bool? allowClassification,
      int? analyzerType}) {
    return MLObjectAnalyzerSetting._(
        path: path,
        allowClassification: allowClassification,
        allowMultiResults: allowMultiResults,
        analyzerType: analyzerType);
  }

  MLObjectAnalyzerSetting._(
      {required this.path,
      this.analyzerType,
      this.allowClassification,
      this.allowMultiResults});

  Map<String, dynamic> toMap() {
    return {
      "path": path,
      "analyzerType": analyzerType ?? TYPE_PICTURE,
      "allowMultiResults": allowMultiResults ?? true,
      "allowClassification": allowClassification ?? true
    };
  }
}
