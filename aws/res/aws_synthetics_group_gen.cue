package res

#aws_synthetics_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_synthetics_group")
	close({
		arn?:      string
		group_id?: string
		id?:       string
		name!:     string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
