package res

#aws_quicksight_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_namespace")
	arn?:             string
	aws_account_id?:  string
	capacity_region?: string
	creation_status?: string
	id?:              string
	identity_store?:  string
	namespace!:       string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
