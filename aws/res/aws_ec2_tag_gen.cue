package res

#aws_ec2_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_tag")
	id?:         string
	key:         string
	resource_id: string
	value:       string
}
