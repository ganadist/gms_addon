generate() {
  python3 $(gettop)/vendor/google/build/tools/generate.py "$@"
}

apkdown() {
  python3 $(gettop)/vendor/google/build/tools/apkdown "$@"
}

apkinfo() {
  python3 $(gettop)/vendor/google/build/tools/lib/apk.py "$@"
}

dextract() {
  python3 $(gettop)/vendor/google/build/tools/dextract "$@"
}

cleanodex() {
  rm -rf $OUT/system/framework $OUT/system/app $OUT/system/priv-app
  rm -rf $OUT/obj/ETC/system_build_prop_intermediates
  find $OUT/ -name "*.jar" -exec rm -f {} \;
  find $OUT/ -name "*.apk" -exec rm -f {} \;
}

generate_stub() {
  python2 $(gettop)/vendor/google/src/stubs/generate_stub "$@"
}

