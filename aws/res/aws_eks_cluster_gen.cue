package res

import "list"

#aws_eks_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_cluster")
	close({
		arn?:                           string
		bootstrap_self_managed_addons?: bool
		certificate_authority?: [...close({
			data?: string
		})]
		cluster_id?: string
		created_at?: string
		enabled_cluster_log_types?: [...string]
		endpoint?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		access_config?: matchN(1, [#access_config, list.MaxItems(1) & [...#access_config]])
		force_update_version?: bool
		id?:                   string
		identity?: [...close({
			oidc?: [...close({
				issuer?: string
			})]
		})]
		name!:             string
		platform_version?: string
		compute_config?: matchN(1, [#compute_config, list.MaxItems(1) & [...#compute_config]])
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])
		role_arn!: string
		status?:   string
		tags?: [string]: string
		kubernetes_network_config?: matchN(1, [#kubernetes_network_config, list.MaxItems(1) & [...#kubernetes_network_config]])
		outpost_config?: matchN(1, [#outpost_config, list.MaxItems(1) & [...#outpost_config]])
		remote_network_config?: matchN(1, [#remote_network_config, list.MaxItems(1) & [...#remote_network_config]])
		storage_config?: matchN(1, [#storage_config, list.MaxItems(1) & [...#storage_config]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		version?: string
		upgrade_policy?: matchN(1, [#upgrade_policy, list.MaxItems(1) & [...#upgrade_policy]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [_, ...] & [...#vpc_config]])
		zonal_shift_config?: matchN(1, [#zonal_shift_config, list.MaxItems(1) & [...#zonal_shift_config]])
	})

	#access_config: close({
		authentication_mode?:                         string
		bootstrap_cluster_creator_admin_permissions?: bool
	})

	#compute_config: close({
		enabled?: bool
		node_pools?: [...string]
		node_role_arn?: string
	})

	#encryption_config: close({
		provider?: matchN(1, [_#defs."/$defs/encryption_config/$defs/provider", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_config/$defs/provider"]])
		resources!: [...string]
	})

	#kubernetes_network_config: close({
		elastic_load_balancing?: matchN(1, [_#defs."/$defs/kubernetes_network_config/$defs/elastic_load_balancing", list.MaxItems(1) & [..._#defs."/$defs/kubernetes_network_config/$defs/elastic_load_balancing"]])
		ip_family?:         string
		service_ipv4_cidr?: string
		service_ipv6_cidr?: string
	})

	#outpost_config: close({
		control_plane_placement?: matchN(1, [_#defs."/$defs/outpost_config/$defs/control_plane_placement", list.MaxItems(1) & [..._#defs."/$defs/outpost_config/$defs/control_plane_placement"]])
		control_plane_instance_type!: string
		outpost_arns!: [...string]
	})

	#remote_network_config: close({
		remote_node_networks?: matchN(1, [_#defs."/$defs/remote_network_config/$defs/remote_node_networks", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/remote_network_config/$defs/remote_node_networks"]])
		remote_pod_networks?: matchN(1, [_#defs."/$defs/remote_network_config/$defs/remote_pod_networks", list.MaxItems(1) & [..._#defs."/$defs/remote_network_config/$defs/remote_pod_networks"]])
	})

	#storage_config: close({
		block_storage?: matchN(1, [_#defs."/$defs/storage_config/$defs/block_storage", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/block_storage"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#upgrade_policy: close({
		support_type?: string
	})

	#vpc_config: close({
		cluster_security_group_id?: string
		endpoint_private_access?:   bool
		endpoint_public_access?:    bool
		public_access_cidrs?: [...string]
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	})

	#zonal_shift_config: close({
		enabled?: bool
	})

	_#defs: "/$defs/encryption_config/$defs/provider": close({
		key_arn!: string
	})

	_#defs: "/$defs/kubernetes_network_config/$defs/elastic_load_balancing": close({
		enabled?: bool
	})

	_#defs: "/$defs/outpost_config/$defs/control_plane_placement": close({
		group_name!: string
	})

	_#defs: "/$defs/remote_network_config/$defs/remote_node_networks": close({
		cidrs?: [...string]
	})

	_#defs: "/$defs/remote_network_config/$defs/remote_pod_networks": close({
		cidrs?: [...string]
	})

	_#defs: "/$defs/storage_config/$defs/block_storage": close({
		enabled?: bool
	})
}
