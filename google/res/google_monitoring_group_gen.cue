package res

#google_monitoring_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_monitoring_group")
	close({
		// A user-assigned name for this group, used only for display
		// purposes.
		display_name!: string

		// The filter used to determine which monitored resources
		// belong to this group.
		filter!: string
		id?:     string

		// If true, the members of this group are considered to be a
		// cluster. The system can perform additional analysis on
		// groups that are clusters.
		is_cluster?: bool
		timeouts?:   #timeouts

		// A unique identifier for this group. The format is
		// "projects/{project_id_or_number}/groups/{group_id}".
		name?: string

		// The name of the group's parent, if it has one. The format is
		// "projects/{project_id_or_number}/groups/{group_id}". For
		// groups with no parent, parentName is the empty string, "".
		parent_name?: string
		project?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
