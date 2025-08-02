package data

#aws_ec2_capacity_block_offering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_capacity_block_offering")
	close({
		availability_zone?:          string
		capacity_block_offering_id?: string
		capacity_duration_hours!:    number
		currency_code?:              string
		end_date_range?:             string
		instance_count!:             number
		instance_type!:              string
		region?:                     string
		start_date_range?:           string
		tenancy?:                    string
		upfront_fee?:                string
	})
}
