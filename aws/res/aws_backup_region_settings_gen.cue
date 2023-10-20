package res

#aws_backup_region_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_region_settings")
	id?: string
	resource_type_management_preference?: [string]: bool
	resource_type_opt_in_preference: [string]: bool
}
