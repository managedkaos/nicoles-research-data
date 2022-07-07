URL=https://www.fda.gov/medical-devices/mandatory-reporting-requirements-manufacturers-importers-and-device-user-facilities/about-manufacturer-and-user-facility-device-experience-maude

download-zip-files:
	wget $(URL) \
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
