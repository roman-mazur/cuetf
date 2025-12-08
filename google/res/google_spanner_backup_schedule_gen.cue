package res

import "list"

#google_spanner_backup_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_spanner_backup_schedule")
	close({
		// The database to create the backup schedule on.
		database!: string
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])

		// The instance to create the database on.
		instance!: string
		id?:       string

		// A unique identifier for the backup schedule, which cannot be
		// changed after
		// the backup schedule is created. Values are of the form
		// [a-z][-a-z0-9]*[a-z0-9].
		name?: string
		full_backup_spec?: matchN(1, [#full_backup_spec, list.MaxItems(1) & [...#full_backup_spec]])
		incremental_backup_spec?: matchN(1, [#incremental_backup_spec, list.MaxItems(1) & [...#incremental_backup_spec]])
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])

		// At what relative time in the future, compared to its creation
		// time, the backup should be deleted, e.g. keep backups for 7
		// days.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: '3.5s'.
		// You can set this to a value up to 366 days.
		retention_duration!: string
		project?:            string
		timeouts?:           #timeouts
	})

	#encryption_config: close({
		// The encryption type of backups created by the backup schedule.
		// Possible values are USE_DATABASE_ENCRYPTION,
		// GOOGLE_DEFAULT_ENCRYPTION, or CUSTOMER_MANAGED_ENCRYPTION.
		// If you use CUSTOMER_MANAGED_ENCRYPTION, you must specify a
		// kmsKeyName.
		// If your backup type is incremental-backup, the encryption type
		// must be GOOGLE_DEFAULT_ENCRYPTION. Possible values:
		// ["USE_DATABASE_ENCRYPTION", "GOOGLE_DEFAULT_ENCRYPTION",
		// "CUSTOMER_MANAGED_ENCRYPTION"]
		encryption_type!: string

		// The resource name of the Cloud KMS key to use for encryption.
		// Format:
		// 'projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}'
		kms_key_name?: string

		// Fully qualified name of the KMS keys to use to encrypt this
		// database. The keys must exist
		// in the same locations as the Spanner Database.
		kms_key_names?: [...string]
	})

	#full_backup_spec: close({})

	#incremental_backup_spec: close({})

	#spec: close({
		cron_spec?: matchN(1, [_#defs."/$defs/spec/$defs/cron_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/cron_spec"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/spec/$defs/cron_spec": close({
		// Textual representation of the crontab. User can customize the
		// backup frequency and the backup version time using the cron
		// expression. The version time must be in UTC timzeone.
		// The backup will contain an externally consistent copy of the
		// database at the version time. Allowed frequencies are 12 hour,
		// 1 day,
		// 1 week and 1 month. Examples of valid cron specifications:
		// 0 2/12 * * * : every 12 hours at (2, 14) hours past midnight in
		// UTC.
		// 0 2,14 * * * : every 12 hours at (2,14) hours past midnight in
		// UTC.
		// 0 2 * * * : once a day at 2 past midnight in UTC.
		// 0 2 * * 0 : once a week every Sunday at 2 past midnight in UTC.
		// 0 2 8 * * : once a month on 8th day at 2 past midnight in UTC.
		text?: string
	})
}
