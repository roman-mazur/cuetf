package data

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_oam_link")
	arn?:             string
	id?:              string
	label?:           string
	label_template?:  string
	link_id?:         string
	link_identifier!: string
	resource_types?: [...string]
	sink_arn?: string
	tags?: [string]: string
}
