package res

#aws_ec2_availability_zone_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_availability_zone_group")
	group_name:    string
	id?:           string
	opt_in_status: string
}
