extract_nexus_files() {
	python $(gettop)/vendor/google/build/tools/extract_files.py "$@"
}

write_addon_xml() {
	python $(gettop)/vendor/google/build/tools/write_addon_xml "$@"
}

add_lunch_combo gms-userdebug
