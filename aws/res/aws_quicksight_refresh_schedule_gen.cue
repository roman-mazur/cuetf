package res

#aws_quicksight_refresh_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_refresh_schedule")
	close({
		arn?: string
		schedule?: matchN(1, [#schedule, [...#schedule]])
		aws_account_id?: string
		data_set_id!:    string
		id?:             string
		region?:         string
		schedule_id!:    string
	})

	#schedule: close({
		refresh_type!:          string
		start_after_date_time?: string
		schedule_frequency?: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_frequency", [..._#defs."/$defs/schedule/$defs/schedule_frequency"]])
	})

	_#defs: "/$defs/schedule/$defs/schedule_frequency": close({
		interval!:        string
		time_of_the_day?: string
		timezone?:        string
		refresh_on_day?: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day", [..._#defs."/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day"]])
	})

	_#defs: "/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day": close({
		day_of_month?: string
		day_of_week?:  string
	})
}
