package res

#aws_config_aggregate_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_aggregate_authorization")
	account_id!: string
	arn?:        string
	id?:         string
	region!:     string
	tags?: [string]: string
	tags_all?: [string]: string
}
