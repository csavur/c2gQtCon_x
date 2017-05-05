# includes openssl libs onto android build
android {
  ANDROID_EXTRA_LIBS += ../../android-openssl-qt/prebuilt/armeabi-v7a/libcrypto.so #$$PWD/../../android-openssl-qt/prebuilt/armeabi-v7a/libcrypto.so #/home/cs1323/workspace/android-openssl-qt/prebuilt/armeabi-v7a/libcrypto.so
  ANDROID_EXTRA_LIBS += ../../android-openssl-qt/prebuilt/armeabi-v7a/libssl.so #$$PWD/../../android-openssl-qt/prebuilt/armeabi-v7a/libssl.so #/home/cs1323/workspace/android-openssl-qt/prebuilt/armeabi-v7a/libssl.so
}
