package res

#aws_ec2_capacity_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_capacity_reservation")
	arn?:                     string
	availability_zone!:       string
	ebs_optimized?:           bool
	end_date?:                string
	end_date_type?:           string
	ephemeral_storage?:       bool
	id?:                      string
	instance_count!:          number
	instance_match_criteria?: string
	instance_platform!:       string
	instance_type!:           string
	outpost_arn?:             string
	owner_id?:                string
	placement_group_arn?:     string
	tags?: [string]:     string
	tags_all?: [string]: string
	tenancy?:  string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
