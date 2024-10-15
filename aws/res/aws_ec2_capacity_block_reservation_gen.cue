package res

#aws_ec2_capacity_block_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_capacity_block_reservation")
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
	instance_type?:              string
	outpost_arn?:                string
	placement_group_arn?:        string
	reservation_type?:           string
	start_date?:                 string
	tags?: [string]:     string
	tags_all?: [string]: string
	tenancy?:  string
	timeouts?: #timeouts

	#timeouts: create?: string
}
