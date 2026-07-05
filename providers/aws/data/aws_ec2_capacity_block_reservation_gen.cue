package data

aws_ec2_capacity_block_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_capacity_block_reservation")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		availability_zone?:        string
		availability_zone_id?:     string
		available_instance_count?: number
		capacity_block_id?:        string
		commitment_info?: close({
			commitment_end_date?:      string
			committed_instance_count?: number
		})
		created_date?:            string
		delivery_preference?:     string
		ebs_optimized?:           bool
		end_date?:                string
		end_date_type?:           string
		id?:                      string
		instance_count?:          number
		instance_match_criteria?: string
		instance_platform?:       string
		instance_type?:           string
		interruptible_capacity_allocation?: close({
			instance_count?:                        number
			interruptible_capacity_reservation_id?: string
			interruption_type?:                     string
			status?:                                string
			target_instance_count?:                 number
		})
		interruption_info?: close({
			interruption_type?:              string
			source_capacity_reservation_id?: string
		})
		outpost_arn?:         string
		owner_id?:            string
		placement_group_arn?: string
		reservation_type?:    string
		start_date?:          string
		state?:               string
		tags?: [string]: string
		tenancy?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
