#!/usr/bin/env bash

set -e

echo "Importing AWS data"

function importRegion() {
  region=$1
  pkgName=$(echo $region | sed -r 's/-//g')

  echo "Region $region"
  mkdir -p regions/$pkgName 2>/dev/null
  aws --region "$region" ec2 describe-instance-types | cue import -f -o regions/$pkgName/itypes.cue -p $pkgName json: -
  aws --region "$region" ec2 describe-availability-zones | cue import -f -o regions/$pkgName/azs.cue -p $pkgName json: -
  echo "Imported into regions/$pkgName"
}

importRegion us-east-1
importRegion eu-central-1
importRegion eu-west-3
