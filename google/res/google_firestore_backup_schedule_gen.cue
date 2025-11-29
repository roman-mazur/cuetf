package res

import "list"

#google_firestore_backup_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_backup_schedule")
	close({
		// The Firestore database id. Defaults to '"(default)"'.
		database?: string

		// The unique backup schedule identifier across all locations and
		// databases for the given project. Format:
		// 'projects/{{project}}/databases/{{database}}/backupSchedules/{{backupSchedule}}'
		name?: string
		daily_recurrence?: matchN(1, [#daily_recurrence, list.MaxItems(1) & [...#daily_recurrence]])
		id?: string

		// At what relative time in the future, compared to its creation
		// time, the backup should be deleted, e.g. keep backups for 7
		// days.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		//
		// You can set this to a value up to 14 weeks.
		retention!: string
		project?:   string
		timeouts?:  #timeouts
		weekly_recurrence?: matchN(1, [#weekly_recurrence, list.MaxItems(1) & [...#weekly_recurrence]])
	})

	#daily_recurrence: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#weekly_recurrence: close({
		// The day of week to run. Possible values:
		// ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day?: string
	})
}
