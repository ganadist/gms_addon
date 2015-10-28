generate() {
  python3 $(gettop)/vendor/google/build/tools/generate.py "$@"
}

apkdown() {
  python3 $(gettop)/vendor/google/build/tools/apkdown "$@"
}

cleanodex() {
  rm -rf $OUT/system/framework $OUT/system/app $OUT/system/priv-app
  find $OUT/ -name "*.jar" -exec rm -f {} \;
  find $OUT/ -name "*.apk" -exec rm -f {} \;
  find $OUT/ -name "*.prop" -exec rm -f {} \;
}

generate_stub() {
  python2 $(gettop)/vendor/google/src/stubs/generate_stub "$@"
}

