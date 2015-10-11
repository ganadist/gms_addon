generate() {
	python3 $(gettop)/vendor/google/build/tools/generate.py "$@"
}

apkdown() {
	python3 $(gettop)/vendor/google/build/tools/apkdown "$@"
}
