import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'media_detection_method_channel.dart';

abstract class MediaDetectionPlatform extends PlatformInterface {
  /// Constructs a MediaDetectionPlatform.
  MediaDetectionPlatform() : super(token: _token);

  static final Object _token = Object();

  static MediaDetectionPlatform _instance = MethodChannelMediaDetection();

  /// The default instance of [MediaDetectionPlatform] to use.
  ///
  /// Defaults to [MethodChannelMediaDetection].
  static MediaDetectionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MediaDetectionPlatform] when
  /// they register themselves.
  static set instance(MediaDetectionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
