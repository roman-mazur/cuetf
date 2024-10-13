package res

#aws_appfabric_app_bundle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appfabric_app_bundle")
	arn?:                      string
	customer_managed_key_arn?: string
	id?:                       string
	tags?: [string]:     string
	tags_all?: [string]: string
}
