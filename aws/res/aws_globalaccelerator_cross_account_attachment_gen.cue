package res

#aws_globalaccelerator_cross_account_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_globalaccelerator_cross_account_attachment")
	arn?:                string
	created_time?:       string
	id?:                 string
	last_modified_time?: string
	name!:               string
	principals?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	resource?: #resource | [...#resource]

	#resource: {
		cidr_block?:  string
		endpoint_id?: string
		region?:      string
	}
}
