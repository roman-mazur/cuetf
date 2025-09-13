package res

import "list"

#google_compute_node_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_node_group")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional textual description of the resource.
		description?: string

		// The initial number of nodes in the node group. One of
		// 'initial_size' or 'autoscaling_policy' must be configured on
		// resource creation.
		initial_size?: number
		id?:           string

		// Specifies how to handle instances when a node in the group
		// undergoes maintenance. Set to one of: DEFAULT,
		// RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default
		// value is DEFAULT.
		maintenance_policy?: string

		// Name of the resource.
		name!: string

		// The URL of the node template to which this node group belongs.
		node_template!: string
		project?:       string
		self_link?:     string
		autoscaling_policy?: matchN(1, [#autoscaling_policy, list.MaxItems(1) & [...#autoscaling_policy]])
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		share_settings?: matchN(1, [#share_settings, list.MaxItems(1) & [...#share_settings]])
		timeouts?: #timeouts

		// The total number of nodes in the node group.
		size?: number

		// Zone where this node group is located
		zone?: string
	})

	#autoscaling_policy: close({
		// Maximum size of the node group. Set to a value less than or
		// equal
		// to 100 and greater than or equal to min-nodes.
		max_nodes?: number

		// Minimum size of the node group. Must be less
		// than or equal to max-nodes. The default value is 0.
		min_nodes?: number

		// The autoscaling mode. Set to one of the following:
		// - OFF: Disables the autoscaler.
		// - ON: Enables scaling in and scaling out.
		// - ONLY_SCALE_OUT: Enables only scaling out.
		// You must use this mode if your node groups are configured to
		// restart their hosted VMs on minimal servers. Possible values:
		// ["OFF", "ON", "ONLY_SCALE_OUT"]
		mode?: string
	})

	#maintenance_window: close({
		// instances.start time of the window. This must be in UTC format
		// that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or
		// 20:00. For example, both 13:00-5 and 08:00 are valid.
		start_time!: string
	})

	#share_settings: close({
		project_map?: matchN(1, [_#defs."/$defs/share_settings/$defs/project_map", [..._#defs."/$defs/share_settings/$defs/project_map"]])

		// Node group sharing type. Possible values: ["ORGANIZATION",
		// "SPECIFIC_PROJECTS", "LOCAL"]
		share_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/share_settings/$defs/project_map": close({
		id!: string

		// The project id/number should be the same as the key of this
		// project config in the project map.
		project_id!: string
	})
}
