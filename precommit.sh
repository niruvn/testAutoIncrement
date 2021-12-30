#!/bin/sh

targetFile="Version.targets"

versionStr=$(grep VersionPatch $targetFile | sed 's/.*= //')
currentBuild=${versionStr//[!0-9]/}
newStr="<VersionPatch>"$((currentBuild+1))"</VersionPatch>"
sed -i "" 's/$versionStr/$newStr' $targetFile