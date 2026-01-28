package res

import "list"

#aws_appstream_image_builder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appstream_image_builder")
	close({
		appstream_agent_version?: string
		arn?:                     string
		created_time?:            string
		description?:             string
		display_name?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		enable_default_internet_access?: bool
		iam_role_arn?:                   string
		id?:                             string
		image_arn?:                      string
		access_endpoint?: matchN(1, [#access_endpoint, list.MaxItems(4) & [...#access_endpoint]])
		image_name?: string
		domain_join_info?: matchN(1, [#domain_join_info, list.MaxItems(1) & [...#domain_join_info]])
		instance_type!: string
		name!:          string
		state?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
	})

	#access_endpoint: close({
		endpoint_type!: string
		vpce_id?:       string
	})

	#domain_join_info: close({
		directory_name?:                         string
		organizational_unit_distinguished_name?: string
	})

	#vpc_config: close({
		security_group_ids?: [...string]
		subnet_ids?: [...string]
	})
}
