package data

#google_backup_dr_backup_plan_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_backup_plan_associations")
	close({
		// A list of the backup plan associations found.
		associations?: [...close({
			backup_plan?: string
			create_time?: string
			name?:        string
			resource?:    string
		})]
		id?: string

		// The location to list the backup plan associations from.
		location!: string

		// The ID of the project in which the resource belongs.
		project?: string

		// The resource type of workload on which backup plan is applied.
		// Examples include, "compute.googleapis.com/Instance",
		// "compute.googleapis.com/Disk".
		resource_type!: string
	})
}
