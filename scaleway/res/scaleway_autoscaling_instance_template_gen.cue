package res

import "list"

#scaleway_autoscaling_instance_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_autoscaling_instance_template")
	close({
		volumes?: matchN(1, [#volumes, [...#volumes]])

		// Cloud-config to apply to each instance (will be passed in
		// Base64 format)
		cloud_init?: string

		// Name of Instance commercial type
		commercial_type!: string

		// The date and time of the creation of the Instance template
		created_at?: string
		id?:         string

		// Instance image ID. Can be an ID of a marketplace or personal
		// image. This image must be compatible with `volume` and
		// `commercial_type` template
		image_id?: string

		// The Instance template name
		name?: string

		// Instance placement group ID. This is optional, but it is highly
		// recommended to set a preference for Instance location within
		// Availability Zone
		placement_group_id?: string

		// Private Network IDs to attach to the new Instance
		private_network_ids?: [...string]

		// The project_id you want to attach the resource to
		project_id?: string

		// Number of flexible IPv4 addresses to attach to the new Instance
		public_ips_v4_count?: number

		// Number of flexible IPv6 addresses to attach to the new Instance
		public_ips_v6_count?: number

		// Instance security group ID
		security_group_id?: string

		// The Instance template status
		status?: string

		// The tags associated with the Instance template
		tags?: [...string]

		// The date and time of the last update of the Instance template
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#volumes: close({
		from_empty?: matchN(1, [_#defs."/$defs/volumes/$defs/from_empty", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/from_empty"]])
		from_snapshot?: matchN(1, [_#defs."/$defs/volumes/$defs/from_snapshot", list.MaxItems(1) & [..._#defs."/$defs/volumes/$defs/from_snapshot"]])

		// Force the Instance to boot on this volume
		boot?: bool

		// The name of the volume
		name!: string

		// The maximum IO/s expected, according to the different options
		// available in stock (`5000 | 15000`)
		perf_iops?: number

		// List of tags assigned to the volume
		tags?: [...string]

		// Type of the volume
		volume_type!: string
	})

	_#defs: "/$defs/volumes/$defs/from_empty": close({
		// Size in GB of the new empty volume
		size!: number
	})

	_#defs: "/$defs/volumes/$defs/from_snapshot": close({
		// Override size (in GB) of the cloned volume
		size?: number

		// ID of the snapshot to clone
		snapshot_id!: string
	})
}
