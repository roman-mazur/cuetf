package data

#aws_connect_contact_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_contact_flow")
	close({
		arn?:             string
		contact_flow_id?: string
		content?:         string
		description?:     string
		id?:              string
		instance_id!:     string
		name?:            string
		region?:          string
		tags?: [string]: string
		type?: string
	})
}
