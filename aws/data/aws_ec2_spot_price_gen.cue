package data

#aws_ec2_spot_price: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_spot_price")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		availability_zone?:    string
		id?:                   string
		instance_type?:        string
		region?:               string
		spot_price?:           string
		spot_price_timestamp?: string
		timeouts?:             #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
