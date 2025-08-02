package data

#aws_lbs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lbs")
	close({
		arns?: [...string]
		id?:     string
		region?: string
		tags?: [string]: string
	})
}
