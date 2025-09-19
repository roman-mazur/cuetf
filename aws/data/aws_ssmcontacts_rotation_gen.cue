package data

#aws_ssmcontacts_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_rotation")
	close({
		arn!: string
		contact_ids?: [...string]
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		recurrence?: [...close({
			daily_settings?: [...close({
				hour_of_day?:    number
				minute_of_hour?: number
			})]
			monthly_settings?: [...close({
				day_of_month?: number
				hand_off_time?: [...close({
					hour_of_day?:    number
					minute_of_hour?: number
				})]
			})]
			number_of_on_calls?:    number
			recurrence_multiplier?: number
			shift_coverages?: [...close({
				coverage_times?: [...close({
					end?: [...close({
						hour_of_day?:    number
						minute_of_hour?: number
					})]
					start?: [...close({
						hour_of_day?:    number
						minute_of_hour?: number
					})]
				})]
				map_block_key?: string
			})]
			weekly_settings?: [...close({
				day_of_week?: string
				hand_off_time?: [...close({
					hour_of_day?:    number
					minute_of_hour?: number
				})]
			})]
		})]
		start_time?: string
		tags?: [string]: string
		time_zone_id?: string
	})
}
