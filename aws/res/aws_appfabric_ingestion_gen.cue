package res

#aws_appfabric_ingestion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_ingestion")
	app!:            string
	app_bundle_arn!: string
	arn?:            string
	id?:             string
	ingestion_type!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	tenant_id!: string
}
