package res

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_oam_link")
	arn?:           string
	id?:            string
	label?:         string
	label_template: string
	link_id?:       string
	resource_types: [...string]
	sink_arn?:       string
	sink_identifier: string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
