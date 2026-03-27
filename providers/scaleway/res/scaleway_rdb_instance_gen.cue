package res

import "list"

#scaleway_rdb_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_rdb_instance")
	close({
		load_balancer?: matchN(1, [#load_balancer, list.MaxItems(1) & [...#load_balancer]])
		logs_policy?: matchN(1, [#logs_policy, list.MaxItems(1) & [...#logs_policy]])
		private_ip?: matchN(1, [#private_ip, [...#private_ip]])
		private_network?: matchN(1, [#private_network, list.MaxItems(1) & [...#private_network]])
		timeouts?: #timeouts

		// Boolean to store logical backups in the same region as the
		// database instance
		backup_same_region?: bool

		// Backup schedule frequency in hours
		backup_schedule_frequency?: number

		// Backup schedule retention in days
		backup_schedule_retention?: number

		// Certificate of the database instance
		certificate?: string

		// Disable automated backup for the database instance
		disable_backup?: bool

		// Enable or disable encryption at rest for the database instance
		encryption_at_rest?: bool

		// Database's engine version name (e.g., 'PostgreSQL-16',
		// 'MySQL-8'). Changing this value triggers a blue/green upgrade
		// using MajorUpgradeWorkflow with automatic endpoint migration
		engine?: string
		id?:     string

		// Map of engine settings to be set at database initialisation.
		init_settings?: [string]: string

		// Enable or disable high availability for the database instance
		is_ha_cluster?: bool

		// Name of the database instance
		name?: string

		// The type of database instance you want to create
		node_type!: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// Password for the first user of the database instance. Only one
		// of `password` or `password_wo` should be specified.
		password?: string

		// Password for the first user of the database instance in
		// [write-only](https://developer.hashicorp.com/terraform/language/manage-sensitive-data/write-only)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://developer.hashicorp.com/terraform/language/manage-sensitive-data/write-only)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// Read replicas of the database instance
		read_replicas?: [...close({
			ip?:   string
			name?: string
			port?: number
		})]

		// The region you want to attach the resource to
		region?: string

		// Map of engine settings to be set on a running instance.
		settings?: [string]: string

		// ID of an existing snapshot to create a new instance from. This
		// allows restoring a database instance to the state captured in
		// the specified snapshot. Conflicts with the `engine` attribute.
		snapshot_id?: string

		// List of tags ["tag1", "tag2", ...] attached to a database
		// instance
		tags?: [...string]

		// List of available engine versions for upgrade
		upgradable_versions?: [...close({
			id?:            string
			minor_version?: string
			name?:          string
			version?:       string
		})]

		// Identifier for the first user of the database instance
		user_name?: string

		// Volume size (in GB) when volume_type is not lssd
		volume_size_in_gb?: number

		// Type of volume where data are stored
		volume_type?: string
	})

	#load_balancer: close({
		// The endpoint ID
		endpoint_id?: string

		// The hostname of your endpoint
		hostname?: string

		// The IP of your load balancer service
		ip?: string

		// The name of your load balancer service
		name?: string

		// The port of your load balancer service
		port?: number
	})

	#logs_policy: close({
		// The max age (in days) of remote logs to keep on the Database
		// Instance
		max_age_retention?: number

		// The max disk size of remote logs to keep on the Database
		// Instance.
		total_disk_retention?: number
	})

	#private_ip: close({
		// The private IPv4 address
		address?: string

		// The ID of the IPv4 address resource
		id?: string
	})

	#private_network: close({
		// Whether or not the private network endpoint should be
		// configured with IPAM
		enable_ipam?: bool

		// The endpoint ID
		endpoint_id?: string

		// The hostname of your endpoint
		hostname?: string

		// The IP of your Instance within the private service
		ip?: string

		// The IP with the given mask within the private subnet
		ip_net?: string

		// The name of your private service
		name?: string

		// The private network ID
		pn_id!: string

		// The port of your private service
		port?: number

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
