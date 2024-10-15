package res

#aws_emr_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_instance_group")
	autoscaling_policy?:     string
	bid_price?:              string
	cluster_id!:             string
	configurations_json?:    string
	ebs_optimized?:          bool
	id?:                     string
	instance_count?:         number
	instance_type!:          string
	name?:                   string
	running_instance_count?: number
	status?:                 string
	ebs_config?: #ebs_config | [...#ebs_config]

	#ebs_config: {
		iops?:                 number
		size!:                 number
		type!:                 string
		volumes_per_instance?: number
	}
}
