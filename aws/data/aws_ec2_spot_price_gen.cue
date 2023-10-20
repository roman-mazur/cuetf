package data

#aws_ec2_spot_price: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_spot_price")
	availability_zone?:    string
	id?:                   string
	instance_type?:        string
	spot_price?:           string
	spot_price_timestamp?: string
	filter?:               #filter | [...#filter]
	timeouts?:             #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
