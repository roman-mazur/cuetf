package res

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_managed_prefix_list")
	address_family: string
	arn?:           string
	id?:            string
	max_entries:    number
	name:           string
	owner_id?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	version?: number
	entry?:   #entry | [...#entry]

	#entry: {
		cidr:         string
		description?: string
	}
}
