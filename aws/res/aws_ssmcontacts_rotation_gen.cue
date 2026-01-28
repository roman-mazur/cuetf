package res

#aws_ssmcontacts_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssmcontacts_rotation")
	close({
		arn?: string
		contact_ids!: [...string]
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		start_time?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		time_zone_id!: string
		recurrence?: matchN(1, [#recurrence, [...#recurrence]])
	})

	#recurrence: close({
		daily_settings?: matchN(1, [_#defs."/$defs/recurrence/$defs/daily_settings", [..._#defs."/$defs/recurrence/$defs/daily_settings"]])
		monthly_settings?: matchN(1, [_#defs."/$defs/recurrence/$defs/monthly_settings", [..._#defs."/$defs/recurrence/$defs/monthly_settings"]])
		shift_coverages?: matchN(1, [_#defs."/$defs/recurrence/$defs/shift_coverages", [..._#defs."/$defs/recurrence/$defs/shift_coverages"]])
		weekly_settings?: matchN(1, [_#defs."/$defs/recurrence/$defs/weekly_settings", [..._#defs."/$defs/recurrence/$defs/weekly_settings"]])
		number_of_on_calls!:    number
		recurrence_multiplier!: number
	})

	_#defs: "/$defs/recurrence/$defs/daily_settings": close({
		hour_of_day!:    number
		minute_of_hour!: number
	})

	_#defs: "/$defs/recurrence/$defs/monthly_settings": close({
		hand_off_time?: matchN(1, [_#defs."/$defs/recurrence/$defs/monthly_settings/$defs/hand_off_time", [..._#defs."/$defs/recurrence/$defs/monthly_settings/$defs/hand_off_time"]])
		day_of_month!: number
	})

	_#defs: "/$defs/recurrence/$defs/monthly_settings/$defs/hand_off_time": close({
		hour_of_day!:    number
		minute_of_hour!: number
	})

	_#defs: "/$defs/recurrence/$defs/shift_coverages": close({
		coverage_times?: matchN(1, [_#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times", [..._#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times"]])
		map_block_key!: string
	})

	_#defs: "/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times": close({
		end?: matchN(1, [_#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/end", [..._#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/end"]])
		start?: matchN(1, [_#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/start", [..._#defs."/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/start"]])
	})

	_#defs: "/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/end": close({
		hour_of_day!:    number
		minute_of_hour!: number
	})

	_#defs: "/$defs/recurrence/$defs/shift_coverages/$defs/coverage_times/$defs/start": close({
		hour_of_day!:    number
		minute_of_hour!: number
	})

	_#defs: "/$defs/recurrence/$defs/weekly_settings": close({
		hand_off_time?: matchN(1, [_#defs."/$defs/recurrence/$defs/weekly_settings/$defs/hand_off_time", [..._#defs."/$defs/recurrence/$defs/weekly_settings/$defs/hand_off_time"]])
		day_of_week!: string
	})

	_#defs: "/$defs/recurrence/$defs/weekly_settings/$defs/hand_off_time": close({
		hour_of_day!:    number
		minute_of_hour!: number
	})
}
