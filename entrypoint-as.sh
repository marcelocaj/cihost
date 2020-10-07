
cd /code/workspace


git config --global credential.helper "/bin/bash /credentials-helper.sh"

echo "Clonning libraries..."
git clone https://git.seceng.informatik.tu-darmstadt.de/cstc/pstb/libraries.git
echo "Clonning project..."
git clone --recurse-submodules https://git.seceng.informatik.tu-darmstadt.de/cstc/pstb/ci_host_android.git


echo "Putting GStreamer in place ..."
ln -s $PWD/libraries/android ci_host_android/app/src/main/android_libs
ln -s /gstreamer ci_host_android/app/src/main/android_libs/gstreamer
#mv libraries/android ci_host_android/app/src/main/android_libs
#rm -rf ci_host_android/app/src/main/android_libs/gstreamer
#mv /gstreamer ci_host_android/app/src/main/android_libs


echo "Compiling everything..."
cd /code/workspace/ci_host_android
chmod +x ./gradlew
./gradlew assembleDebug
