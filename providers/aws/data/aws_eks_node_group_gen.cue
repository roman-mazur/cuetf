package data

#aws_eks_node_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_eks_node_group")
	close({
		ami_type?:      string
		arn?:           string
		capacity_type?: string
		cluster_name!:  string
		disk_size?:     number
		id?:            string
		instance_types?: [...string]
		labels?: [string]: string
		launch_template?: [...close({
			id?:      string
			name?:    string
			version?: string
		})]
		node_group_name!: string
		node_role_arn?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		release_version?: string
		remote_access?: [...close({
			ec2_ssh_key?: string
			source_security_group_ids?: [...string]
		})]
		resources?: [...close({
			autoscaling_groups?: [...close({
				name?: string
			})]
			remote_access_security_group_id?: string
		})]
		scaling_config?: [...close({
			desired_size?: number
			max_size?:     number
			min_size?:     number
		})]
		status?: string
		subnet_ids?: [...string]
		tags?: [string]: string
		taints?: [...close({
			effect?: string
			key?:    string
			value?:  string
		})]
		update_config?: [...close({
			max_unavailable?:            number
			max_unavailable_percentage?: number
			update_strategy?:            string
		})]
		version?: string
	})
}
