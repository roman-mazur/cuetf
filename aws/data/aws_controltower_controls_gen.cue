package data

#aws_controltower_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_controltower_controls")
	enabled_controls?: [...string]
	id?:                string
	target_identifier!: string
}
