package data

#aws_outposts_outpost_instance_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_outposts_outpost_instance_type")
	close({
		arn!:           string
		id?:            string
		instance_type?: string
		preferred_instance_types?: [...string]
		region?: string
	})
}
