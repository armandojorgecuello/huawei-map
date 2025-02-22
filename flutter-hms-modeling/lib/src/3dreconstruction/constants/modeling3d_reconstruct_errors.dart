/*
    Copyright 2021. Huawei Technologies Co., Ltd. All rights reserved.

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

/// Result codes related to 3D object reconstruction.
abstract class Modeling3dReconstructErrors {
  /// Unsupported image format.
  static const int ERR_IMAGE_FILE_NOTSUPPORTED = 1100;

  /// The total image file size is too large.
  static const int ERR_FILE_SIZE_OVERFLOW = 1101;

  /// The number of image files is not supported.
  static const int ERR_FILE_NUMBER_NOT_SUPPORT = 1102;

  /// The image file does not exist.
  static const int ERR_FILE_NOT_FOUND = 1103;

  /// Invalid parameter.
  static const int ERR_ILLEGAL_PARAMETER = 1104;

  /// The reconstruction engine is busy.
  static const int ERR_ENGINE_BUSY = 1105;

  /// Image upload failed.
  static const int ERR_UPLOAD_FILE_FAILED = 1106;

  /// The task is being executed and cannot be submitted again.
  static const int ERR_TASK_ALREADY_INPROGRESS = 1107;

  /// Query failed.
  static const int ERR_QUERY_FAILED = 1108;

  /// Download failed.
  static const int ERR_DOWNLOAD_FAILED = 1109;

  /// Network connection error.
  static const int ERR_NETCONNECT_FAILED = 1110;

  /// Authentication failed.
  static const int ERR_AUTHORIZE_FAILED = 1111;

  /// Server error.
  static const int ERR_SERVICE_EXCEPTION = 1112;

  /// Internal error.
  static const int ERR_INTERNAL = 1113;

  /// The 3D object reconstruction task does not exist.
  static const int ERR_TASKID_NOT_EXISTED = 1114;

  /// Invalid task status.
  static const int ERR_ILLEGAL_TASK_STATUS = 1115;

  /// The access token is invalid or has expired.
  static const int ERR_ILLEGAL_TOKEN = 1116;

  /// The period for storing the generated model has expired.
  static const int ERR_TASK_EXPIRED = 1117;

  /// The number of API calls exceeds the maximum.
  static const int ERR_RET_OVER_MAX_LIMIT = 1118;

  /// Failed to cancel the upload.
  static const int ERR_UPLOAD_CANCEL_FAILED = 1119;

  /// Failed to cancel the download.
  static const int ERR_DOWNLOAD_CANCEL_FAILED = 1120;

  /// Task initialization failed.
  static const int ERR_INIT_TASK_FAILED = 1121;

  /// Unknown error.
  static const int ERR_UNKNOWN = 1122;

  /// Unsupported input image resolution.
  static const int ERR_IMAGE_RESOLUTION_NOTSUPPORTED = 1123;

  /// Inconsistent input image resolutions.
  static const int ERR_IMAGE_RESOLUTION_INCONSISTENT = 1124;

  /// The input image format is not supported.
  static const int ERR_IMAGE_TYPE_INCONSISTENT = 1125;

  /// Failed to preview the model.
  static const int ERR_MODEL_PREVIEW_FAILED = 1126;

  /// Failed to delete the uploaded files from the cloud.
  static const int ERR_DELETE_REMOTE_FILE_FAILED = 1127;

  /// The task is restricted.
  static const int ERR_TASK_RESTRICTED = 1128;

  /// The data processing location is not set.
  static const int ERR_DATA_PROCESSING_LOCATION_NOT_SET = 1129;
}
