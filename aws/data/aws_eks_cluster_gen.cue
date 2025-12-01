package data

#aws_eks_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_eks_cluster")
	close({
		access_config?: [...close({
			authentication_mode?:                         string
			bootstrap_cluster_creator_admin_permissions?: bool
		})]
		arn?: string
		certificate_authority?: [...close({
			data?: string
		})]
		cluster_id?: string
		compute_config?: [...close({
			enabled?: bool
			node_pools?: [...string]
			node_role_arn?: string
		})]
		control_plane_scaling_config?: [...close({
			tier?: string
		})]
		created_at?:          string
		deletion_protection?: bool
		enabled_cluster_log_types?: [...string]
		endpoint?: string
		id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		identity?: [...close({
			oidc?: [...close({
				issuer?: string
			})]
		})]
		kubernetes_network_config?: [...close({
			elastic_load_balancing?: [...close({
				enabled?: bool
			})]
			ip_family?:         string
			service_ipv4_cidr?: string
			service_ipv6_cidr?: string
		})]
		name!: string
		outpost_config?: [...close({
			control_plane_instance_type?: string
			control_plane_placement?: [...close({
				group_name?: string
			})]
			outpost_arns?: [...string]
		})]
		platform_version?: string
		remote_network_config?: [...close({
			remote_node_networks?: [...close({
				cidrs?: [...string]
			})]
			remote_pod_networks?: [...close({
				cidrs?: [...string]
			})]
		})]
		role_arn?: string
		status?:   string
		storage_config?: [...close({
			block_storage?: [...close({
				enabled?: bool
			})]
		})]
		tags?: [string]: string
		upgrade_policy?: [...close({
			support_type?: string
		})]
		version?: string
		vpc_config?: [...close({
			cluster_security_group_id?: string
			endpoint_private_access?:   bool
			endpoint_public_access?:    bool
			public_access_cidrs?: [...string]
			security_group_ids?: [...string]
			subnet_ids?: [...string]
			vpc_id?: string
		})]
		zonal_shift_config?: [...close({
			enabled?: bool
		})]
	})
}
