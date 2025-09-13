package res

#google_backup_dr_backup_plan_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_backup_plan_association")
	close({
		// The BP with which resource needs to be created
		// Note:
		// - A Backup Plan configured for
		// 'compute.googleapis.com/Instance', can only protect instance
		// type resources.
		// - A Backup Plan configured for 'compute.googleapis.com/Disk'
		// can be used to protect both standard Disks and Regional Disks
		// resources.
		backup_plan!: string

		// The id of backupplan association
		backup_plan_association_id!: string

		// The time when the instance was created
		create_time?: string

		// Resource name of data source which will be used as storage
		// location for backups taken
		data_source?: string

		// The point in time when the last successful backup was captured
		// from the source
		last_successful_backup_consistency_time?: string
		id?:                                      string

		// The location for the backupplan association
		location!: string

		// The name of backup plan association resource created
		name?: string

		// The resource for which BPA needs to be created
		resource!: string
		timeouts?: #timeouts
		project?:  string

		// The resource type of workload on which backupplan is applied.
		// Examples include, "compute.googleapis.com/Instance",
		// "compute.googleapis.com/Disk", and
		// "compute.googleapis.com/RegionDisk"
		resource_type!: string

		// Message for rules config info
		rules_config_info?: [...close({
			last_backup_error?: [...close({
				code?:    number
				message?: string
			})]
			last_backup_state?: string
			rule_id?:           string
		})]

		// The time when the instance was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
