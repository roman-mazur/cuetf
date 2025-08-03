package res

#aws_ec2_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_tag")
	close({
		id?:          string
		key!:         string
		region?:      string
		resource_id!: string
		value!:       string
	})
}
