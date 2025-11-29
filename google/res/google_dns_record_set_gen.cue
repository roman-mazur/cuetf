package res

import "list"

#google_dns_record_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dns_record_set")
	close({
		id?: string

		// The name of the zone in which this record set will reside.
		managed_zone!: string

		// The DNS name this record set will apply to.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The string data for the records in this record set whose
		// meaning depends on the DNS type. For TXT record, if the string
		// data contains spaces, add surrounding \" if you don't want
		// your string to get split on spaces. To specify a single record
		// value longer than 255 characters such as a TXT record for
		// DKIM, add \"\" inside the Terraform configuration string (e.g.
		// "first255characters\"\"morecharacters").
		rrdatas?: [...string]
		routing_policy?: matchN(1, [#routing_policy, list.MaxItems(1) & [...#routing_policy]])

		// The time-to-live of this record set (seconds).
		ttl?: number

		// The DNS record set type.
		type!: string
	})

	#routing_policy: close({
		geo?: matchN(1, [_#defs."/$defs/routing_policy/$defs/geo", [..._#defs."/$defs/routing_policy/$defs/geo"]])
		primary_backup?: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup", list.MaxItems(1) & [..._#defs."/$defs/routing_policy/$defs/primary_backup"]])
		wrr?: matchN(1, [_#defs."/$defs/routing_policy/$defs/wrr", [..._#defs."/$defs/routing_policy/$defs/wrr"]])

		// Specifies whether to enable fencing for geo queries.
		enable_geo_fencing?: bool

		// Specifies the health check.
		health_check?: string
	})

	_#defs: "/$defs/routing_policy/$defs/geo": close({
		health_checked_targets?: matchN(1, [_#defs."/$defs/routing_policy/$defs/geo/$defs/health_checked_targets", list.MaxItems(1) & [..._#defs."/$defs/routing_policy/$defs/geo/$defs/health_checked_targets"]])

		// The location name defined in Google Cloud.
		location!: string
		rrdatas?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/geo/$defs/health_checked_targets": close({
		internal_load_balancers?: matchN(1, [_#defs."/$defs/routing_policy/$defs/geo/$defs/health_checked_targets/$defs/internal_load_balancers", [..._#defs."/$defs/routing_policy/$defs/geo/$defs/health_checked_targets/$defs/internal_load_balancers"]])

		// The Internet IP addresses to be health checked.
		external_endpoints?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/geo/$defs/health_checked_targets/$defs/internal_load_balancers": close({
		// The frontend IP address of the load balancer.
		ip_address!: string

		// The configured IP protocol of the load balancer. This value is
		// case-sensitive. Possible values: ["tcp", "udp"]
		ip_protocol!: string

		// The type of load balancer. This value is case-sensitive.
		// Possible values: ["regionalL4ilb", "regionalL7ilb",
		// "globalL7ilb"]
		load_balancer_type?: string

		// The fully qualified url of the network in which the load
		// balancer belongs. This should be formatted like
		// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
		network_url!: string

		// The configured port of the load balancer.
		port!: string

		// The ID of the project in which the load balancer belongs.
		project!: string

		// The region of the load balancer. Only needed for regional load
		// balancers.
		region?: string
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup": close({
		backup_geo!: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo", [_, ...] & [..._#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo"]])
		primary!: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup/$defs/primary", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_policy/$defs/primary_backup/$defs/primary"]])

		// Specifies whether to enable fencing for backup geo queries.
		enable_geo_fencing_for_backups?: bool

		// Specifies the percentage of traffic to send to the backup
		// targets even when the primary targets are healthy.
		trickle_ratio?: number
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo": close({
		health_checked_targets?: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets", list.MaxItems(1) & [..._#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets"]])

		// The location name defined in Google Cloud.
		location!: string
		rrdatas?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets": close({
		internal_load_balancers?: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets/$defs/internal_load_balancers", [..._#defs."/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets/$defs/internal_load_balancers"]])

		// The Internet IP addresses to be health checked.
		external_endpoints?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup/$defs/backup_geo/$defs/health_checked_targets/$defs/internal_load_balancers": close({
		// The frontend IP address of the load balancer.
		ip_address!: string

		// The configured IP protocol of the load balancer. This value is
		// case-sensitive. Possible values: ["tcp", "udp"]
		ip_protocol!: string

		// The type of load balancer. This value is case-sensitive.
		// Possible values: ["regionalL4ilb", "regionalL7ilb",
		// "globalL7ilb"]
		load_balancer_type?: string

		// The fully qualified url of the network in which the load
		// balancer belongs. This should be formatted like
		// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
		network_url!: string

		// The configured port of the load balancer.
		port!: string

		// The ID of the project in which the load balancer belongs.
		project!: string

		// The region of the load balancer. Only needed for regional load
		// balancers.
		region?: string
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup/$defs/primary": close({
		internal_load_balancers?: matchN(1, [_#defs."/$defs/routing_policy/$defs/primary_backup/$defs/primary/$defs/internal_load_balancers", [..._#defs."/$defs/routing_policy/$defs/primary_backup/$defs/primary/$defs/internal_load_balancers"]])

		// The Internet IP addresses to be health checked.
		external_endpoints?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/primary_backup/$defs/primary/$defs/internal_load_balancers": close({
		// The frontend IP address of the load balancer.
		ip_address!: string

		// The configured IP protocol of the load balancer. This value is
		// case-sensitive. Possible values: ["tcp", "udp"]
		ip_protocol!: string

		// The type of load balancer. This value is case-sensitive.
		// Possible values: ["regionalL4ilb", "regionalL7ilb",
		// "globalL7ilb"]
		load_balancer_type?: string

		// The fully qualified url of the network in which the load
		// balancer belongs. This should be formatted like
		// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
		network_url!: string

		// The configured port of the load balancer.
		port!: string

		// The ID of the project in which the load balancer belongs.
		project!: string

		// The region of the load balancer. Only needed for regional load
		// balancers.
		region?: string
	})

	_#defs: "/$defs/routing_policy/$defs/wrr": close({
		health_checked_targets?: matchN(1, [_#defs."/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets", list.MaxItems(1) & [..._#defs."/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets"]])
		rrdatas?: [...string]

		// The ratio of traffic routed to the target.
		weight!: number
	})

	_#defs: "/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets": close({
		internal_load_balancers?: matchN(1, [_#defs."/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets/$defs/internal_load_balancers", [..._#defs."/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets/$defs/internal_load_balancers"]])

		// The Internet IP addresses to be health checked.
		external_endpoints?: [...string]
	})

	_#defs: "/$defs/routing_policy/$defs/wrr/$defs/health_checked_targets/$defs/internal_load_balancers": close({
		// The frontend IP address of the load balancer.
		ip_address!: string

		// The configured IP protocol of the load balancer. This value is
		// case-sensitive. Possible values: ["tcp", "udp"]
		ip_protocol!: string

		// The type of load balancer. This value is case-sensitive.
		// Possible values: ["regionalL4ilb", "regionalL7ilb",
		// "globalL7ilb"]
		load_balancer_type?: string

		// The fully qualified url of the network in which the load
		// balancer belongs. This should be formatted like
		// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.
		network_url!: string

		// The configured port of the load balancer.
		port!: string

		// The ID of the project in which the load balancer belongs.
		project!: string

		// The region of the load balancer. Only needed for regional load
		// balancers.
		region?: string
	})
}
