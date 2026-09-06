package res

scaleway_instance_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_template")
	close({
		// The creation timestamp of the Instance Template.
		created_at?: string

		// The IDs of the filesystems to attach to the servers created using the Instance Template.
		filesystem_ids?: [...string]

		// The ID of the Instance Template, in the `{zone}/{id}` format.
		id?: string

		// The name of the Instance Template. If not provided, a random name will be generated.
		name?: string

		// The ID of the placement group to attach to the servers created using the Instance Template.
		placement_group_id?: string

		// The IDs of the private networks to attach to the servers created using the Instance Template.
		private_networks?: [...string]

		// The project ID the Instance Template belongs to. Defaults to the provider's project ID.
		project_id?: string

		// The number of public IPv4 to attach to the servers created using the Instance Template.
		public_ipv4_count?: number

		// The number of public IPv6 to attach to the servers created using the Instance Template.
		public_ipv6_count?: number

		// The ID of the security group to attach to the servers created using the Instance Template.
		security_group_id?: string

		// The tags that will be assigned to the servers created using the Instance Template.
		server_tags?: [...string]

		// The commercial type of the server defined by the Instance Template.
		server_type!: string

		// The tags associated with the Instance Template.
		tags?: [...string]

		// The last update timestamp of the Instance Template.
		updated_at?: string

		// The specs of the volumes of the servers created using the Instance Template.
		volumes?: matchN(1, [close({
			// The ID of the base snapshot for the volume.
			base_snapshot_id?: string

			// The label of the image used as base for the volume.
			image_label?: string

			// The name of volume. If not provided, a random name will be generated.
			name?: string

			// The performance IOPS of the volume.
			perf_iops?: number

			// The size of the volume in gigabytes.
			size_in_gb!: number

			// The tags associated with the volume.
			tags?: [...string]

			// The type of volume.
			volume_type!: string
		}), [...close({
			// The ID of the base snapshot for the volume.
			base_snapshot_id?: string

			// The label of the image used as base for the volume.
			image_label?: string

			// The name of volume. If not provided, a random name will be generated.
			name?: string

			// The performance IOPS of the volume.
			perf_iops?: number

			// The size of the volume in gigabytes.
			size_in_gb!: number

			// The tags associated with the volume.
			tags?: [...string]

			// The type of volume.
			volume_type!: string
		})]])

		// The ID of the IAM SSH key used to encrypt the initial admin password on a
		// Windows server. This will be repeated on all servers created using the
		// Instance Template.
		windows_rdp_ssh_key_id?: string

		// The zone the Instance Template is in.
		zone?: string
	})
}
