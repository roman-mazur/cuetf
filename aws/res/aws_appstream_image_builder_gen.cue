package res

import "list"

#aws_appstream_image_builder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_image_builder")
	close({
		appstream_agent_version?: string
		arn?:                     string
		access_endpoint?: matchN(1, [#access_endpoint, list.MaxItems(4) & [...#access_endpoint]])
		domain_join_info?: matchN(1, [#domain_join_info, list.MaxItems(1) & [...#domain_join_info]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		created_time?:                   string
		description?:                    string
		display_name?:                   string
		enable_default_internet_access?: bool
		iam_role_arn?:                   string
		id?:                             string
		image_arn?:                      string
		image_name?:                     string
		instance_type!:                  string
		name!:                           string
		region?:                         string
		state?:                          string
		tags?: [string]:     string
		tags_all?: [string]: string
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
