package res

#aws_ec2_carrier_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_carrier_gateway")
	arn?:      string
	id?:       string
	owner_id?: string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id!: string
}
