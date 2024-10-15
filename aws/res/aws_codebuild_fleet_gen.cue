package res

import "list"

#aws_codebuild_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_fleet")
	arn?:                string
	base_capacity!:      number
	compute_type!:       string
	created?:            string
	environment_type!:   string
	fleet_service_role?: string
	id?:                 string
	image_id?:           string
	last_modified?:      string
	name!:               string
	overflow_behavior?:  string
	status?: [...{
		context?:     string
		message?:     string
		status_code?: string
	}]
	tags?: [string]:     string
	tags_all?: [string]: string
	scaling_configuration?: #scaling_configuration | list.MaxItems(1) & [...#scaling_configuration]
	vpc_config?: #vpc_config | [...#vpc_config]

	#scaling_configuration: {
		desired_capacity?: number
		max_capacity?:     number
		scaling_type?:     string
		target_tracking_scaling_configs?: #scaling_configuration.#target_tracking_scaling_configs | [...#scaling_configuration.#target_tracking_scaling_configs]

		#target_tracking_scaling_configs: {
			metric_type?:  string
			target_value?: number
		}
	}

	#vpc_config: {
		security_group_ids!: [...string]
		subnets!: [...string]
		vpc_id!: string
	}
}
