package res

import "list"

#aws_cloudformation_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudformation_type")
	close({
		arn?: string
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		default_version_id?:     string
		deprecated_status?:      string
		description?:            string
		documentation_url?:      string
		execution_role_arn?:     string
		id?:                     string
		is_default_version?:     bool
		provisioning_type?:      string
		region?:                 string
		schema?:                 string
		schema_handler_package!: string
		source_url?:             string
		type?:                   string
		type_arn?:               string
		type_name!:              string
		version_id?:             string
		visibility?:             string
	})

	#logging_config: close({
		log_group_name!: string
		log_role_arn!:   string
	})
}
