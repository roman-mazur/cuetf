package res

import "list"

#google_gke_backup_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_backup_backup_plan")
	close({
		// The source cluster from which Backups will be created via this
		// BackupPlan.
		cluster!: string

		// This flag indicates whether this BackupPlan has been
		// deactivated.
		// Setting this field to True locks the BackupPlan such that no
		// further updates will be allowed
		// (except deletes), including the deactivated field itself. It
		// also prevents any new Backups
		// from being created via this BackupPlan (including scheduled
		// Backups).
		deactivated?: bool

		// User specified descriptive string for this BackupPlan.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// etag is used for optimistic concurrency control as a way to
		// help prevent simultaneous
		// updates of a backup plan from overwriting each other. It is
		// strongly suggested that
		// systems make use of the 'etag' in the read-modify-write cycle
		// to perform BackupPlan updates
		// in order to avoid race conditions: An etag is returned in the
		// response to backupPlans.get,
		// and systems are expected to put that etag in the request to
		// backupPlans.patch or
		// backupPlans.delete to ensure that their change will be applied
		// to the same version of the resource.
		etag?: string

		// Description: A set of custom labels supplied by the user.
		// A list of key->value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The region of the Backup Plan.
		location!: string
		id?:       string

		// The full name of the BackupPlan Resource.
		name!: string

		// The number of Kubernetes Pods backed up in the last successful
		// Backup created via this BackupPlan.
		protected_pod_count?: number
		backup_config?: matchN(1, [#backup_config, list.MaxItems(1) & [...#backup_config]])
		backup_schedule?: matchN(1, [#backup_schedule, list.MaxItems(1) & [...#backup_schedule]])
		retention_policy?: matchN(1, [#retention_policy, list.MaxItems(1) & [...#retention_policy]])
		timeouts?: #timeouts
		project?:  string

		// The State of the BackupPlan.
		state?: string

		// Detailed description of why BackupPlan is in its current state.
		state_reason?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server generated, unique identifier of UUID format.
		uid?: string
	})

	#backup_config: close({
		// If True, include all namespaced resources.
		all_namespaces?: bool

		// This flag specifies whether Kubernetes Secret resources should
		// be included
		// when they fall into the scope of Backups.
		include_secrets?: bool
		encryption_key?: matchN(1, [_#defs."/$defs/backup_config/$defs/encryption_key", list.MaxItems(1) & [..._#defs."/$defs/backup_config/$defs/encryption_key"]])

		// This flag specifies whether volume data should be backed up
		// when PVCs are
		// included in the scope of a Backup.
		include_volume_data?: bool
		selected_applications?: matchN(1, [_#defs."/$defs/backup_config/$defs/selected_applications", list.MaxItems(1) & [..._#defs."/$defs/backup_config/$defs/selected_applications"]])

		// This flag specifies whether Backups will not fail when
		// Backup for GKE detects Kubernetes configuration that is
		// non-standard or requires additional setup to restore.
		permissive_mode?: bool
		selected_namespace_labels?: matchN(1, [_#defs."/$defs/backup_config/$defs/selected_namespace_labels", list.MaxItems(1) & [..._#defs."/$defs/backup_config/$defs/selected_namespace_labels"]])
		selected_namespaces?: matchN(1, [_#defs."/$defs/backup_config/$defs/selected_namespaces", list.MaxItems(1) & [..._#defs."/$defs/backup_config/$defs/selected_namespaces"]])
	})

	#backup_schedule: close({
		rpo_config?: matchN(1, [_#defs."/$defs/backup_schedule/$defs/rpo_config", list.MaxItems(1) & [..._#defs."/$defs/backup_schedule/$defs/rpo_config"]])

		// A standard cron string that defines a repeating schedule for
		// creating Backups via this BackupPlan.
		// This is mutually exclusive with the rpoConfig field since at
		// most one
		// schedule can be defined for a BackupPlan.
		// If this is defined, then backupRetainDays must also be defined.
		cron_schedule?: string

		// This flag denotes whether automatic Backup creation is paused
		// for this BackupPlan.
		paused?: bool
	})

	#retention_policy: close({
		// Minimum age for a Backup created via this BackupPlan (in days).
		// Must be an integer value between 0-90 (inclusive).
		// A Backup created under this BackupPlan will not be deletable
		// until it reaches Backup's (create time +
		// backup_delete_lock_days).
		// Updating this field of a BackupPlan does not affect existing
		// Backups.
		// Backups created after a successful update will inherit this new
		// value.
		backup_delete_lock_days?: number

		// The default maximum age of a Backup created via this
		// BackupPlan.
		// This field MUST be an integer value >= 0 and <= 365. If
		// specified,
		// a Backup created under this BackupPlan will be automatically
		// deleted
		// after its age reaches (createTime + backupRetainDays).
		// If not specified, Backups created under this BackupPlan will
		// NOT be
		// subject to automatic deletion. Updating this field does NOT
		// affect
		// existing Backups under it. Backups created AFTER a successful
		// update
		// will automatically pick up the new value.
		// NOTE: backupRetainDays must be >= backupDeleteLockDays.
		// If cronSchedule is defined, then this must be <= 360 * the
		// creation interval.
		// If rpo_config is defined, then this must be
		// <= 360 * targetRpoMinutes/(1440minutes/day)
		backup_retain_days?: number

		// This flag denotes whether the retention policy of this
		// BackupPlan is locked.
		// If set to True, no further update is allowed on this policy,
		// including
		// the locked field itself.
		locked?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/backup_config/$defs/encryption_key": close({
		// Google Cloud KMS encryption key. Format:
		// projects/*/locations/*/keyRings/*/cryptoKeys/*
		gcp_kms_encryption_key!: string
	})

	_#defs: "/$defs/backup_config/$defs/selected_applications": close({
		namespaced_names?: matchN(1, [_#defs."/$defs/backup_config/$defs/selected_applications/$defs/namespaced_names", [_, ...] & [..._#defs."/$defs/backup_config/$defs/selected_applications/$defs/namespaced_names"]])
	})

	_#defs: "/$defs/backup_config/$defs/selected_applications/$defs/namespaced_names": close({
		// The name of a Kubernetes Resource.
		name!: string

		// The namespace of a Kubernetes Resource.
		namespace!: string
	})

	_#defs: "/$defs/backup_config/$defs/selected_namespace_labels": close({
		resource_labels?: matchN(1, [_#defs."/$defs/backup_config/$defs/selected_namespace_labels/$defs/resource_labels", [_, ...] & [..._#defs."/$defs/backup_config/$defs/selected_namespace_labels/$defs/resource_labels"]])
	})

	_#defs: "/$defs/backup_config/$defs/selected_namespace_labels/$defs/resource_labels": close({
		// The key of the kubernetes label.
		key!: string

		// The value of the Label.
		value!: string
	})

	_#defs: "/$defs/backup_config/$defs/selected_namespaces": close({
		// A list of Kubernetes Namespaces.
		namespaces!: [...string]
	})

	_#defs: "/$defs/backup_schedule/$defs/rpo_config": close({
		exclusion_windows?: matchN(1, [_#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows", [..._#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows"]])

		// Defines the target RPO for the BackupPlan in minutes, which
		// means the target
		// maximum data loss in time that is acceptable for this
		// BackupPlan. This must be
		// at least 60, i.e., 1 hour, and at most 86400, i.e., 60 days.
		target_rpo_minutes!: number
	})

	_#defs: "/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows": close({
		days_of_week?: matchN(1, [_#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/days_of_week", list.MaxItems(1) & [..._#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/days_of_week"]])
		single_occurrence_date?: matchN(1, [_#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/single_occurrence_date", list.MaxItems(1) & [..._#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/single_occurrence_date"]])
		start_time?: matchN(1, [_#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/start_time"]])

		// The exclusion window occurs every day if set to "True".
		// Specifying this field to "False" is an error.
		// Only one of singleOccurrenceDate, daily and daysOfWeek may be
		// set.
		daily?: bool

		// Specifies duration of the window in seconds with up to nine
		// fractional digits,
		// terminated by 's'. Example: "3.5s". Restrictions for duration
		// based on the
		// recurrence type to allow some time for backup to happen:
		// - single_occurrence_date: no restriction
		// - daily window: duration < 24 hours
		// - weekly window:
		// - days of week includes all seven days of a week: duration < 24
		// hours
		// - all other weekly window: duration < 168 hours (i.e., 24 * 7
		// hours)
		duration!: string
	})

	_#defs: "/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/days_of_week": close({
		// A list of days of week. Possible values: ["MONDAY", "TUESDAY",
		// "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		days_of_week?: [...string]
	})

	_#defs: "/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/single_occurrence_date": close({
		// Day of a month.
		day?: number

		// Month of a year.
		month?: number

		// Year of the date.
		year?: number
	})

	_#defs: "/$defs/backup_schedule/$defs/rpo_config/$defs/exclusion_windows/$defs/start_time": close({
		// Hours of day in 24 hour format.
		hours?: number

		// Minutes of hour of day.
		minutes?: number

		// Fractions of seconds in nanoseconds.
		nanos?: number

		// Seconds of minutes of the time.
		seconds?: number
	})
}
