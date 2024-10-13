package data

#aws_lakeformation_data_lake_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lakeformation_data_lake_settings")
	admins?: [...string]
	allow_external_data_filtering?:         bool
	allow_full_table_external_data_access?: bool
	authorized_session_tag_value_list?: [...string]
	catalog_id?: string
	create_database_default_permissions?: [...{
		permissions?: [...string]
		principal?: string
	}]
	create_table_default_permissions?: [...{
		permissions?: [...string]
		principal?: string
	}]
	external_data_filtering_allow_list?: [...string]
	id?: string
	read_only_admins?: [...string]
	trusted_resource_owners?: [...string]
}
