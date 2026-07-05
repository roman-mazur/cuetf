package res

aws_glue_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_catalog")
	close({
		catalog_properties?: matchN(1, [#catalog_properties, [...#catalog_properties]])
		create_database_default_permissions?: matchN(1, [#create_database_default_permissions, [...#create_database_default_permissions]])
		create_table_default_permissions?: matchN(1, [#create_table_default_permissions, [...#create_table_default_permissions]])
		federated_catalog?: matchN(1, [#federated_catalog, [...#federated_catalog]])
		target_redshift_catalog?: matchN(1, [#target_redshift_catalog, [...#target_redshift_catalog]])
		timeouts?:                              #timeouts
		allow_full_table_external_data_access?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                            string
		arn?:                                               string
		catalog_id?:                                        string
		create_time?:                                       string
		description?:                                       string
		name!:                                              string
		overwrite_child_resource_permissions_with_default?: string
		parameters?: [string]: string
		tags?: [string]:       string
		tags_all?: [string]:   string
		update_time?: string
	})

	#catalog_properties: close({
		data_lake_access_properties?: matchN(1, [_#defs."/$defs/catalog_properties/$defs/data_lake_access_properties", [..._#defs."/$defs/catalog_properties/$defs/data_lake_access_properties"]])
		iceberg_optimization_properties?: matchN(1, [_#defs."/$defs/catalog_properties/$defs/iceberg_optimization_properties", [..._#defs."/$defs/catalog_properties/$defs/iceberg_optimization_properties"]])
		custom_properties?: [string]: string
	})

	#create_database_default_permissions: close({
		principal?: matchN(1, [_#defs."/$defs/create_database_default_permissions/$defs/principal", [..._#defs."/$defs/create_database_default_permissions/$defs/principal"]])
		permissions?: [...string]
	})

	#create_table_default_permissions: close({
		principal?: matchN(1, [_#defs."/$defs/create_table_default_permissions/$defs/principal", [..._#defs."/$defs/create_table_default_permissions/$defs/principal"]])
		permissions?: [...string]
	})

	#federated_catalog: close({
		connection_name?: string
		connection_type?: string
		identifier?:      string
	})

	#target_redshift_catalog: close({
		catalog_arn!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/catalog_properties/$defs/data_lake_access_properties": close({
		catalog_type?:             string
		data_lake_access?:         bool
		data_transfer_role?:       string
		kms_key?:                  string
		managed_workgroup_name?:   string
		managed_workgroup_status?: string
		redshift_database_name?:   string
		status_message?:           string
	})

	_#defs: "/$defs/catalog_properties/$defs/iceberg_optimization_properties": close({
		compaction?: [string]:           string
		orphan_file_deletion?: [string]: string
		retention?: [string]:            string
		role_arn?: string
	})

	_#defs: "/$defs/create_database_default_permissions/$defs/principal": close({
		data_lake_principal_identifier?: string
	})

	_#defs: "/$defs/create_table_default_permissions/$defs/principal": close({
		data_lake_principal_identifier?: string
	})
}
