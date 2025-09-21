# exiftool -overwrite_original \
#   -IPTC:By-line="Michael Pascale" \
#   -IPTC:Credit="Michael Pascale" \
#   -IPTC:CopyrightNotice="Copyright 2025 Michael Pascale" \
#   -IPTC:RightsUsageTerms="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) - https://creativecommons.org/licenses/by-nc-nd/4.0/" \
#   -EXIF:Copyright="Copyright 2025 Michael Pascale"
#   -XMP-dc:creator="Michael Pascale" \
#   -XMP-dc:rights="Copyright 2025 Michael Pascale" \
#   -XMP-cc:license="https://creativecommons.org/licenses/by-nc-nd/4.0/" \
#   -XMP-cc:AttributionName="Michael Pascale" \
#   -XMP-cc:AttributionURL="https://www.psyc.dev/photography" \Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) - https://creativecommons.org/licenses/by-nc-nd/4.0/
#   "$1"

creator="Michael Pascale"
copyright="Copyright 2025 ${creator}"
webverify="https://www.psyc.dev/photography"
weblicense="https://creativecommons.org/licenses/by-nc-nd/4.0/"
terms="This work is licensed to the public under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International license ${weblicense} verify at ${webverify}"

exiftool -overwrite_original \
  -IPTC:By-line="${creator}" \
  -IPTC:Credit="${creator}" \
  -IPTC:CopyrightNotice="${copyright}" \
  -EXIF:Copyright="${copyright}" \
  -XMP-xmpRights:Marked="True" \
  -XMP-xmpRights:WebStatement="${webverify}" \
  -XMP-xmpRights:UsageTerms="${terms}" \
  -XMP-dc:creator="${creator}" \
  -XMP-dc:rights="${copyright}" \
  -XMP-cc:license="${weblicense}"\
  -XMP-cc:AttributionName="${creator}" \
  -XMP-cc:AttributionURL="${webverify}" \
  "$1"
