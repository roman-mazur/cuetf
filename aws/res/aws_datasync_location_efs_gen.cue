package res

import "list"

#aws_datasync_location_efs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_efs")
	access_point_arn?:            string
	arn?:                         string
	efs_file_system_arn!:         string
	file_system_access_role_arn?: string
	id?:                          string
	in_transit_encryption?:       string
	subdirectory?:                string
	tags?: [string]:     string
	tags_all?: [string]: string
	uri?: string
	ec2_config?: #ec2_config | list.MaxItems(1) & [_, ...] & [...#ec2_config]

	#ec2_config: {
		security_group_arns!: [...string]
		subnet_arn!: string
	}
}
