package res

import "list"

#aws_lakeformation_data_lake_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_data_lake_settings")
	close({
		admins?: [...string]
		allow_external_data_filtering?: bool
		create_database_default_permissions?: matchN(1, [#create_database_default_permissions, list.MaxItems(3) & [...#create_database_default_permissions]])
		allow_full_table_external_data_access?: bool
		authorized_session_tag_value_list?: [...string]
		catalog_id?: string
		external_data_filtering_allow_list?: [...string]
		id?: string
		create_table_default_permissions?: matchN(1, [#create_table_default_permissions, list.MaxItems(3) & [...#create_table_default_permissions]])
		parameters?: [string]: string
		read_only_admins?: [...string]
		region?: string
		trusted_resource_owners?: [...string]
	})

	#create_database_default_permissions: close({
		permissions?: [...string]
		principal?: string
	})

	#create_table_default_permissions: close({
		permissions?: [...string]
		principal?: string
	})
}
