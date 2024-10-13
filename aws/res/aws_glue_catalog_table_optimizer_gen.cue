package res

#aws_glue_catalog_table_optimizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_catalog_table_optimizer")
	catalog_id!:    string
	database_name!: string
	table_name!:    string
	type!:          string
	configuration?: #configuration | [...#configuration]

	#configuration: {
		enabled!:  bool
		role_arn!: string
	}
}
