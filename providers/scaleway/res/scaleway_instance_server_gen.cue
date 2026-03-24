package res

import "list"

#scaleway_instance_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_server")
	close({
		filesystems?: matchN(1, [#filesystems, [...#filesystems]])
		private_ips?: matchN(1, [#private_ips, [...#private_ips]])
		private_network?: matchN(1, [#private_network, list.MaxItems(8) & [...#private_network]])
		public_ips?: matchN(1, [#public_ips, [...#public_ips]])
		root_volume?: matchN(1, [#root_volume, list.MaxItems(1) & [...#root_volume]])
		timeouts?: #timeouts

		// The additional volumes attached to the server
		additional_volume_ids?: [...string]

		// The ID of the IAM SSH key used to encrypt the initial admin
		// password on a Windows server
		admin_password_encryption_ssh_key_id?: string

		// The boot type of the server
		boot_type?: string

		// The cloud init script associated with this server
		cloud_init?: string

		// Enable dynamic IP on the server
		enable_dynamic_ip?: bool
		id?:                string

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

		// The project_id you want to attach the resource to
		project_id?: string

		// If true, the instance is protected against accidental deletion
		// via the Scaleway API.
		protected?: bool

		// Delete and re-create server if type change
		replace_on_type_change?: bool

		// The security group the server is attached to
		security_group_id?: string

		// The state of the server should be: started, stopped, standby
		state?: string

		// The tags associated with the server
		tags?: [...string]

		// The instance type of the server
		type!: string

		// The user data associated with the server
		user_data?: [string]: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#filesystems: close({
		// The filesystem ID attached to the server
		filesystem_id?: string

		// The state of the filesystem
		status?: string
	})

	#private_ips: close({
		// The private IP address
		address?: string

		// The ID of the IP address resource
		id?: string
	})

	#private_network: close({
		// MAC address of the NIC
		mac_address?: string

		// The Private Network ID
		pn_id!: string

		// The ID of the NIC
		pnic_id?: string

		// The private NIC state
		status?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#public_ips: close({
		// IP Address
		address?: string

		// Whether the IP is dynamic
		dynamic?: bool

		// IP address family (inet or inet6)
		family?: string

		// Gateway's IP address
		gateway?: string

		// ID of the IP
		id?: string

		// CIDR netmask
		netmask?: string

		// Provisioning mode of the IP address
		provisioning_mode?: string
	})

	#root_volume: close({
		// Set the volume where the boot the server
		boot?: bool

		// Force deletion of the root volume on instance termination
		delete_on_termination?: bool

		// Name of the root volume
		name?: string

		// SBS Volume IOPS, only with volume_type as sbs_volume
		sbs_iops?: number

		// Size of the root volume in gigabytes
		size_in_gb?: number

		// Volume ID of the root volume
		volume_id?: string

		// Volume type of the root volume
		volume_type?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
