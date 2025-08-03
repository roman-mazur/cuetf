package res

#aws_ec2_transit_gateway_policy_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_policy_table")
	close({
		arn?:    string
		id?:     string
		region?: string
		state?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_id!: string
	})
}
