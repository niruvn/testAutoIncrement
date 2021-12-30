#!/bin/sh

targetFile="Version.targets"


patchNo=$(grep VersionPatch $targetFile | sed 's/.*= //' | tr -d -c 0-9)
findStr="<VersionPatch>"$((patchNo))

replaceStr="<VersionPatch>"$((patchNo+1))

sed -i "s/$findStr/$replaceStr/" $targetFile
