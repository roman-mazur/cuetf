package res

#aws_ec2_capacity_block_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_capacity_block_reservation")
	close({
		arn?:                        string
		availability_zone?:          string
		capacity_block_offering_id!: string
		created_date?:               string
		ebs_optimized?:              bool
		end_date?:                   string
		end_date_type?:              string
		id?:                         string
		instance_count?:             number
		instance_platform!:          string
		timeouts?:                   #timeouts
		instance_type?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		outpost_arn?:         string
		placement_group_arn?: string
		reservation_type?:    string
		start_date?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		tenancy?: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
