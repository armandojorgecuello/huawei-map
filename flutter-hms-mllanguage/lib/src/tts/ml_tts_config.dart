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

import 'ml_tts_constants.dart';
import 'ml_tts_engine.dart';

class MLTtsConfig {
  String text;
  String? language;
  String? person;
  String? synthesizeMode;
  double? speed;
  double? volume;
  int? queuingMode;

  MLTtsConfig({
    required this.text,
    this.language,
    this.person,
    this.queuingMode,
    this.speed,
    this.synthesizeMode,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return {
      "text": text,
      "language": language ?? MLTtsConstants.TTS_EN_US,
      "person": person ?? MLTtsConstants.TTS_SPEAKER_FEMALE_EN,
      "speed": speed ?? 1.0,
      "volume": volume ?? 1.0,
      "queuingMode": queuingMode ?? MLTtsEngine.QUEUE_APPEND,
      "synthesizeMode": synthesizeMode ?? MLTtsConstants.TTS_ONLINE_MODE
    };
  }
}
