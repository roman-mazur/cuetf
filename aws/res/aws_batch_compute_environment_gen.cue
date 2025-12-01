package res

import "list"

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_batch_compute_environment")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		ecs_cluster_arn?: string
		id?:              string
		name?:            string
		name_prefix?:     string
		service_role?:    string
		state?:           string
		compute_resources?: matchN(1, [#compute_resources, list.MaxItems(1) & [...#compute_resources]])
		status?:        string
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
		eks_configuration?: matchN(1, [#eks_configuration, list.MaxItems(1) & [...#eks_configuration]])
		update_policy?: matchN(1, [#update_policy, list.MaxItems(1) & [...#update_policy]])
	})

	#compute_resources: close({
		allocation_strategy?: string
		bid_percentage?:      number
		desired_vcpus?:       number
		ec2_key_pair?:        string
		image_id?:            string
		instance_role?:       string
		instance_type?: [...string]
		max_vcpus!: number
		ec2_configuration?: matchN(1, [_#defs."/$defs/compute_resources/$defs/ec2_configuration", list.MaxItems(2) & [..._#defs."/$defs/compute_resources/$defs/ec2_configuration"]])
		min_vcpus?:       number
		placement_group?: string
		security_group_ids?: [...string]
		launch_template?: matchN(1, [_#defs."/$defs/compute_resources/$defs/launch_template", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/launch_template"]])
		spot_iam_fleet_role?: string
		subnets!: [...string]
		tags?: [string]: string
		type!: string
	})

	#eks_configuration: close({
		eks_cluster_arn!:      string
		kubernetes_namespace!: string
	})

	#update_policy: close({
		job_execution_timeout_minutes?: number
		terminate_jobs_on_update?:      bool
	})

	_#defs: "/$defs/compute_resources/$defs/ec2_configuration": close({
		image_id_override?:        string
		image_kubernetes_version?: string
		image_type?:               string
	})

	_#defs: "/$defs/compute_resources/$defs/launch_template": close({
		launch_template_id?:   string
		launch_template_name?: string
		version?:              string
	})
}
