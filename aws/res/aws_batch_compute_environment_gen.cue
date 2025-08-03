package res

import "list"

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_compute_environment")
	close({
		arn?:             string
		ecs_cluster_arn?: string
		compute_resources?: matchN(1, [#compute_resources, list.MaxItems(1) & [...#compute_resources]])
		eks_configuration?: matchN(1, [#eks_configuration, list.MaxItems(1) & [...#eks_configuration]])
		id?:          string
		name?:        string
		name_prefix?: string
		region?:      string
		update_policy?: matchN(1, [#update_policy, list.MaxItems(1) & [...#update_policy]])
		service_role?:  string
		state?:         string
		status?:        string
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#compute_resources: close({
		allocation_strategy?: string
		bid_percentage?:      number
		ec2_configuration?: matchN(1, [_#defs."/$defs/compute_resources/$defs/ec2_configuration", list.MaxItems(2) & [..._#defs."/$defs/compute_resources/$defs/ec2_configuration"]])
		desired_vcpus?: number
		ec2_key_pair?:  string
		image_id?:      string
		instance_role?: string
		instance_type?: [...string]
		launch_template?: matchN(1, [_#defs."/$defs/compute_resources/$defs/launch_template", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/launch_template"]])
		max_vcpus!:       number
		min_vcpus?:       number
		placement_group?: string
		security_group_ids?: [...string]
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
		job_execution_timeout_minutes!: number
		terminate_jobs_on_update!:      bool
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
