package res

import "list"

#aws_datasync_location_efs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_efs")
	close({
		access_point_arn?:            string
		arn?:                         string
		efs_file_system_arn!:         string
		file_system_access_role_arn?: string
		id?:                          string
		in_transit_encryption?:       string
		ec2_config?: matchN(1, [#ec2_config, list.MaxItems(1) & [_, ...] & [...#ec2_config]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		subdirectory?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})

	#ec2_config: close({
		security_group_arns!: [...string]
		subnet_arn!: string
	})
}
