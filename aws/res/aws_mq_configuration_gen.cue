package res

#aws_mq_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_mq_configuration")
	arn?:                     string
	authentication_strategy?: string
	data!:                    string
	description?:             string
	engine_type!:             string
	engine_version!:          string
	id?:                      string
	latest_revision?:         number
	name!:                    string
	tags?: [string]:     string
	tags_all?: [string]: string
}
