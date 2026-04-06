package res

#scaleway_baremetal_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_baremetal_server")
	close({
		options?: matchN(1, [#options, [...#options]])
		private_ips?: matchN(1, [#private_ips, [...#private_ips]])
		private_network?: matchN(1, [#private_network, [...#private_network]])
		timeouts?: #timeouts

		// Configuration data to pass to cloud-init such as a YAML cloud
		// config data or a user-data script
		cloud_init?: string

		// Some description to associate to the server, max 255 characters
		description?: string

		// Domain associated with the server
		domain?: string

		// Hostname of the server
		hostname?: string
		id?:       string

		// If True, this boolean allows to create a server without the
		// install config if you want to provide it later
		install_config_afterward?: bool

		// IP addresses attached to the server.
		ips?: [...close({
			address?: string
			id?:      string
			reverse?: string
			version?: string
		})]

		// IPv4 addresses attached to the server
		ipv4?: [...close({
			address?: string
			id?:      string
			reverse?: string
			version?: string
		})]

		// IPv6 addresses attached to the server
		ipv6?: [...close({
			address?: string
			id?:      string
			reverse?: string
			version?: string
		})]

		// Name of the server
		name?: string

		// ID or name of the server offer
		offer!: string

		// ID of the server offer
		offer_id?: string

		// Name of the server offer
		offer_name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The base image of the server
		os?: string

		// The base image name of the server
		os_name?: string

		// The partitioning schema in json format
		partitioning?: string

		// Password used for the installation. Only one of `password` or
		// `password_wo` should be specified.
		password?: string

		// Password used for the installation in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// If true, the baremetal server is protected against accidental
		// deletion via the Scaleway API.
		protected?: bool

		// If True, this boolean allows to reinstall the server on SSH key
		// IDs, user or password changes
		reinstall_on_config_changes?: bool

		// Password used for the service to install. Only one of
		// `service_password` or `service_password_wo` should be
		// specified.
		service_password?: string

		// Password used for the service to install in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `service_password` or `service_password_wo`
		// should be specified. `service_password_wo` will not be set in
		// the Terraform state. To update the `service_password_wo`, you
		// must also update the `service_password_wo_version`.
		service_password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// service password. To update the `service_password_wo`, you
		// must also update the `service_password_wo_version`.
		service_password_wo_version?: number

		// User used for the service to install.
		service_user?: string

		// Array of SSH key IDs allowed to SSH to the server
		//
		// **NOTE** : If you are attempting to update your SSH key IDs, it
		// will induce the reinstall of your server.
		// If this behaviour is wanted, please set
		// 'reinstall_on_ssh_key_changes' argument to true.
		ssh_key_ids?: [...string]

		// Array of tags to associate with the server
		tags?: [...string]

		// User used for the installation.
		user?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#options: close({
		// Auto expire the option after this date
		expires_at?: string

		// IDs of the options
		id!: string

		// name of the option
		name?: string
	})

	#private_ips: close({
		// The private IP address
		address?: string

		// The ID of the IP address resource
		id?: string
	})

	#private_network: close({
		// The date and time of the creation of the private network
		created_at?: string

		// The ID of the private network to associate with the server
		id!: string

		// List of IPAM IP IDs to attach to the server
		ipam_ip_ids?: [...string]

		// The ID of the Server-to-Private Network mapping
		mapping_id?: string

		// The private network status
		status?: string

		// The date and time of the last update of the private network
		updated_at?: string

		// The VLAN ID associated to the private network
		vlan?: number
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
