package res

#scaleway_vpc_public_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_public_gateway")
	close({
		timeouts?: #timeouts

		// Set a definitive list of IP ranges (in CIDR notation) allowed
		// to connect to the SSH bastion
		allowed_ip_ranges?: [...string]

		// The bandwidth available of the gateway
		bandwidth?: number

		// Enable SSH bastion on the gateway
		bastion_enabled?: bool

		// Port of the SSH bastion
		bastion_port?: number

		// The date and time of the creation of the public gateway
		created_at?: string

		// Enable SMTP on the gateway
		enable_smtp?: bool
		id?:          string

		// attach an existing IP to the gateway
		ip_id?: string

		// Put a Public Gateway in IPAM mode, so that it can be used with
		// the Public Gateways API v2
		move_to_ipam?: bool

		// name of the gateway
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Trigger a refresh of the SSH keys for a given Public Gateway by
		// changing this field's value
		refresh_ssh_keys?: string

		// The status of the public gateway
		status?: string

		// The tags associated with public gateway
		tags?: [...string]

		// gateway type
		type!: string

		// The date and time of the last update of the public gateway
		updated_at?: string

		// override the gateway's default recursive DNS servers, if DNS
		// features are enabled
		upstream_dns_servers?: [...string]

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
