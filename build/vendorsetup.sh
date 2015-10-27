generate() {
  python3 $(gettop)/vendor/google/build/tools/generate.py "$@"
}

apkdown() {
  python3 $(gettop)/vendor/google/build/tools/apkdown "$@"
}

cleanodex() {
  find $OUT/ -name "*.jar" -exec rm -f {} \;
  find $OUT/ -name "*.apk" -exec rm -f {} \;
  find $OUT/ -name "oat" -exec rm -rf {} \;
  find $OUT/ -name "*.prop" -exec rm -f {} \;
  rm -rf $OUT/system/framework $OUT/system/app $OUT/system/priv-app
}

generate_stub() {
  python2 $(gettop)/vendor/google/src/stubs/generate_stub "$@"
}

