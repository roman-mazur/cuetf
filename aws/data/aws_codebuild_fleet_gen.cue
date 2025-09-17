package data

#aws_codebuild_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_fleet")
	close({
		arn?:           string
		base_capacity?: number
		compute_configuration?: [...close({
			disk?:          number
			instance_type?: string
			machine_type?:  string
			memory?:        number
			vcpu?:          number
		})]
		compute_type?:     string
		created?:          string
		environment_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		fleet_service_role?: string
		id?:                 string
		image_id?:           string
		last_modified?:      string
		name!:               string
		overflow_behavior?:  string
		scaling_configuration?: [...close({
			desired_capacity?: number
			max_capacity?:     number
			scaling_type?:     string
			target_tracking_scaling_configs?: [...close({
				metric_type?:  string
				target_value?: number
			})]
		})]
		status?: [...close({
			context?:     string
			message?:     string
			status_code?: string
		})]
		tags?: [string]: string
		vpc_config?: [...close({
			security_group_ids?: [...string]
			subnets?: [...string]
			vpc_id?: string
		})]
	})
}
