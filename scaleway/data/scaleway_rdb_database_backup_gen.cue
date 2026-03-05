package data

#scaleway_rdb_database_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_database_backup")
	close({
		// The ID of the Backup
		backup_id?: string

		// Creation date (Format ISO 8601).
		created_at?: string

		// Name of the database of this backup.
		database_name?: string

		// URL you can download the backup from (when exporting).
		download_url?: string

		// Expiration date of the download link (Format ISO 8601).
		download_url_expires_at?: string

		// Expiration date (Format ISO 8601). Cannot be removed.
		expires_at?: string
		id?:         string

		// Instance on which the user is created
		instance_id?: string

		// Name of the instance of the backup.
		instance_name?: string

		// Name of the backup.
		name?: string

		// The ID of the project to filter the Backup
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Whether the backup is stored in the same region as the source
		// instance.
		same_region?: bool

		// Size of the backup (in bytes).
		size?: number

		// Status of the backup (creating, ready, restoring, deleting,
		// error, exporting, locked).
		status?: string

		// Updated date (Format ISO 8601).
		updated_at?: string
	})
}
