package res

#aws_quicksight_refresh_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_quicksight_refresh_schedule")
	close({
		arn?:            string
		aws_account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		data_set_id!: string
		id?:          string
		schedule_id!: string
		schedule?: matchN(1, [#schedule, [...#schedule]])
	})

	#schedule: close({
		schedule_frequency?: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_frequency", [..._#defs."/$defs/schedule/$defs/schedule_frequency"]])
		refresh_type!:          string
		start_after_date_time?: string
	})

	_#defs: "/$defs/schedule/$defs/schedule_frequency": close({
		refresh_on_day?: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day", [..._#defs."/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day"]])
		interval!:        string
		time_of_the_day?: string
		timezone?:        string
	})

	_#defs: "/$defs/schedule/$defs/schedule_frequency/$defs/refresh_on_day": close({
		day_of_month?: string
		day_of_week?:  string
	})
}
