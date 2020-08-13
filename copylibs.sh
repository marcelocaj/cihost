mkdir -p ./libs
ldd ci_host | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' ./libs

cd ./libs
rm libpthread.so*
rm libstdc*
rm libc.so*
rm libdl.so*
rm libm.so*
