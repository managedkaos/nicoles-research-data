URL=https://www.fda.gov/medical-devices/mandatory-reporting-requirements-manufacturers-importers-and-device-user-facilities/about-manufacturer-and-user-facility-device-experience-maude

download-zip-files:
	wget $(URL) \
		--quiet \
		--show-progress \
		--directory-prefix=Data \
		--recursive \
		--level=1 \
		--span-hosts \
		--tries=1 \
		--no-directories \
		--timestamping \
		--no-parent \
		--accept=.zip \
		--execute robots=off

requirements:
	/usr/bin/env pip install -r requirements.txt

list-zip-files:
	/usr/bin/env python list-zip-files.py | tee MAUDE_Data.md
