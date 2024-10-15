package res

#aws_elb_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elb_attachment")
	elb!:      string
	id?:       string
	instance!: string
}
