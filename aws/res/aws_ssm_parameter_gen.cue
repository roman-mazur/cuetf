package res

#aws_ssm_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_parameter")
	allowed_pattern?: string
	arn?:             string
	data_type?:       string
	description?:     string
	id?:              string
	insecure_value?:  string
	key_id?:          string
	name!:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	tier?:    string
	type!:    string
	value?:   string
	version?: number
}
