#!/usr/bin/env bash

set -e

echo "Importing AWS data"

function importRegion() {
  region=$1
  pkgName=$(echo "$region" | sed -r 's/-//g')

  echo "Region $region"
  mkdir -p regions/$pkgName 2>/dev/null
  aws --region "$region" ec2 describe-instance-types | cue import -f -o regions/$pkgName/itypes_gen.cue -p $pkgName json: -
  aws --region "$region" ec2 describe-availability-zones | cue import -f -o regions/$pkgName/azs_gen.cue -p $pkgName json: -
  cat >regions/$pkgName/name_gen.cue <<EOF
package $pkgName

#Name: "$region"
EOF
}

importRegion us-east-1
importRegion us-east-2
importRegion us-west-1
importRegion us-west-2
importRegion eu-central-1
importRegion eu-west-1
importRegion eu-west-2
importRegion eu-west-3
importRegion eu-south-1
importRegion eu-south-2
importRegion eu-north-1
importRegion af-south-1
importRegion ap-east-1
importRegion ap-east-2
importRegion ap-south-1
importRegion ap-south-2
importRegion ap-southeast-1
importRegion ap-southeast-2
importRegion ap-southeast-3
importRegion ap-southeast-4
importRegion ap-southeast-5
importRegion ap-southeast-6
importRegion ap-southeast-7
importRegion ap-northeast-1
importRegion ap-northeast-2
importRegion ap-northeast-3
importRegion ca-central-1
importRegion ca-west-1
importRegion il-central-1
importRegion mx-central-1
importRegion me-south-1
importRegion me-central-1
importRegion sa-east-1
importRegion us-gov-east-1
importRegion us-gov-west-1
