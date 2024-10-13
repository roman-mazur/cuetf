package res

#aws_iot_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_policy")
	arn?:                string
	default_version_id?: string
	id?:                 string
	name!:               string
	policy!:             string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		delete?: string
		update?: string
	}
}
