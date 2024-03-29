package res

#aws_connect_contact_flow_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_contact_flow_module")
	arn?:                    string
	contact_flow_module_id?: string
	content?:                string
	content_hash?:           string
	description?:            string
	filename?:               string
	id?:                     string
	instance_id:             string
	name:                    string
	tags?: [string]: string
	tags_all?: [string]: string
}
