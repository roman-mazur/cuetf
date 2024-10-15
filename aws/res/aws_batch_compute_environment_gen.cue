package res

import "list"

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_compute_environment")
	arn?:                             string
	compute_environment_name?:        string
	compute_environment_name_prefix?: string
	ecs_cluster_arn?:                 string
	id?:                              string
	service_role?:                    string
	state?:                           string
	status?:                          string
	status_reason?:                   string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
	compute_resources?: #compute_resources | list.MaxItems(1) & [...#compute_resources]
	eks_configuration?: #eks_configuration | list.MaxItems(1) & [...#eks_configuration]
	update_policy?: #update_policy | list.MaxItems(1) & [...#update_policy]

	#compute_resources: {
		allocation_strategy?: string
		bid_percentage?:      number
		desired_vcpus?:       number
		ec2_key_pair?:        string
		image_id?:            string
		instance_role?:       string
		instance_type?: [...string]
		max_vcpus!:       number
		min_vcpus?:       number
		placement_group?: string
		security_group_ids?: [...string]
		spot_iam_fleet_role?: string
		subnets!: [...string]
		tags?: [string]: string
		type!: string
		ec2_configuration?: #compute_resources.#ec2_configuration | list.MaxItems(2) & [...#compute_resources.#ec2_configuration]
		launch_template?: #compute_resources.#launch_template | list.MaxItems(1) & [...#compute_resources.#launch_template]

		#ec2_configuration: {
			image_id_override?: string
			image_type?:        string
		}

		#launch_template: {
			launch_template_id?:   string
			launch_template_name?: string
			version?:              string
		}
	}

	#eks_configuration: {
		eks_cluster_arn!:      string
		kubernetes_namespace!: string
	}

	#update_policy: {
		job_execution_timeout_minutes!: number
		terminate_jobs_on_update!:      bool
	}
}
