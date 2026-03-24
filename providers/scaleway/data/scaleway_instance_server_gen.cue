package data

#scaleway_instance_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_server")
	close({
		// The additional volumes attached to the server
		additional_volume_ids?: [...string]

		// The ID of the IAM SSH key used to encrypt the initial admin
		// password on a Windows server
		admin_password_encryption_ssh_key_id?: string

		// The boot type of the server
		boot_type?: string

		// ID of the target bootscript (set boot_type to bootscript)
		bootscript_id?: string

		// The cloud init script associated with this server
		cloud_init?: string

		// Enable dynamic IP on the server
		enable_dynamic_ip?: bool

		// Filesystems attach to the server
		filesystems?: [...close({
			filesystem_id?: string
			status?:        string
		})]
		id?: string

		// The UUID or the label of the base image used by the server
		image?: string

		// The ID of the reserved IP for the server
		ip_id?: string

		// The IDs of the reserved IP for the server
		ip_ids?: [...string]

		// The name of the server
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The placement group the server is attached to
		placement_group_id?: string

		// True when the placement group policy is respected
		placement_group_policy_respected?: bool

		// List of private IPv4 and IPv6 addresses associated with the
		// resource
		private_ips?: [...close({
			address?: string
			id?:      string
		})]

		// List of private network to connect with your instance
		private_network?: [...close({
			mac_address?: string
			pn_id?:       string
			pnic_id?:     string
			status?:      string
			zone?:        string
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// If true, the instance is protected against accidental deletion
		// via the Scaleway API.
		protected?: bool

		// List of private IPv4 and IPv6 addresses attached to your
		// instance
		public_ips?: [...close({
			address?:           string
			dynamic?:           bool
			family?:            string
			gateway?:           string
			id?:                string
			netmask?:           string
			provisioning_mode?: string
		})]

		// Delete and re-create server if type change
		replace_on_type_change?: bool

		// Root volume attached to the server on creation
		root_volume?: [...close({
			boot?:                  bool
			delete_on_termination?: bool
			name?:                  string
			sbs_iops?:              number
			size_in_gb?:            number
			volume_id?:             string
			volume_type?:           string
		})]

		// The security group the server is attached to
		security_group_id?: string

		// The ID of the server
		server_id?: string

		// The state of the server should be: started, stopped, standby
		state?: string

		// The tags associated with the server
		tags?: [...string]

		// The instance type of the server
		type?: string

		// The user data associated with the server
		user_data?: [string]: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
