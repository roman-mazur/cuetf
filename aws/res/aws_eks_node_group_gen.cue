package res

import "list"

#aws_eks_node_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_eks_node_group")
	close({
		ami_type?:             string
		arn?:                  string
		capacity_type?:        string
		cluster_name!:         string
		disk_size?:            number
		force_update_version?: bool
		id?:                   string
		instance_types?: [...string]
		launch_template?: matchN(1, [#launch_template, list.MaxItems(1) & [...#launch_template]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		labels?: [string]: string
		node_group_name?:        string
		node_group_name_prefix?: string
		node_role_arn!:          string
		node_repair_config?: matchN(1, [#node_repair_config, list.MaxItems(1) & [...#node_repair_config]])
		remote_access?: matchN(1, [#remote_access, list.MaxItems(1) & [...#remote_access]])
		release_version?: string
		resources?: [...close({
			autoscaling_groups?: [...close({
				name?: string
			})]
			remote_access_security_group_id?: string
		})]
		status?: string
		subnet_ids!: [...string]
		tags?: [string]: string
		scaling_config!: matchN(1, [#scaling_config, list.MaxItems(1) & [_, ...] & [...#scaling_config]])
		taint?: matchN(1, [#taint, list.MaxItems(50) & [...#taint]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		version?: string
		update_config?: matchN(1, [#update_config, list.MaxItems(1) & [...#update_config]])
	})

	#launch_template: close({
		id?:      string
		name?:    string
		version!: string
	})

	#node_repair_config: close({
		node_repair_config_overrides?: matchN(1, [_#defs."/$defs/node_repair_config/$defs/node_repair_config_overrides", [..._#defs."/$defs/node_repair_config/$defs/node_repair_config_overrides"]])
		enabled?:                                 bool
		max_parallel_nodes_repaired_count?:       number
		max_parallel_nodes_repaired_percentage?:  number
		max_unhealthy_node_threshold_count?:      number
		max_unhealthy_node_threshold_percentage?: number
	})

	#remote_access: close({
		ec2_ssh_key?: string
		source_security_group_ids?: [...string]
	})

	#scaling_config: close({
		desired_size!: number
		max_size!:     number
		min_size!:     number
	})

	#taint: close({
		effect!: string
		key!:    string
		value?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#update_config: close({
		max_unavailable?:            number
		max_unavailable_percentage?: number
		update_strategy?:            string
	})

	_#defs: "/$defs/node_repair_config/$defs/node_repair_config_overrides": close({
		min_repair_wait_time_mins!: number
		node_monitoring_condition!: string
		node_unhealthy_reason!:     string
		repair_action!:             string
	})
}
