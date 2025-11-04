package res

import "list"

#google_discovery_engine_license_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_license_config")
	close({
		// Whether the license config should be auto renewed when it
		// reaches the end date.
		auto_renew?: bool

		// Whether the license config is for free trial.
		free_trial?: bool

		// The unique id of the license config.
		license_config_id!: string
		id?:                string

		// Number of licenses purchased.
		license_count!: number

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the license config. Values are
		// of the format
		// 'projects/{project}/locations/{location}/licenseConfigs/{license_config}'.
		name?:    string
		project?: string
		end_date?: matchN(1, [#end_date, list.MaxItems(1) & [...#end_date]])
		start_date!: matchN(1, [#start_date, list.MaxItems(1) & [_, ...] & [...#start_date]])
		timeouts?: #timeouts

		// Subscription term. Possible values:
		// ["SUBSCRIPTION_TERM_UNSPECIFIED",
		// "SUBSCRIPTION_TERM_ONE_MONTH", "SUBSCRIPTION_TERM_ONE_YEAR",
		// "SUBSCRIPTION_TERM_THREE_YEARS",
		// "SUBSCRIPTION_TERM_THREE_MONTHS",
		// "SUBSCRIPTION_TERM_FOURTEEN_DAYS", "SUBSCRIPTION_TERM_CUSTOM"]
		subscription_term!: string

		// Subscription tier information for the license config. Possible
		// values: ["SUBSCRIPTION_TIER_UNSPECIFIED",
		// "SUBSCRIPTION_TIER_SEARCH",
		// "SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
		// "SUBSCRIPTION_TIER_NOTEBOOK_LM",
		// "SUBSCRIPTION_TIER_FRONTLINE_WORKER",
		// "SUBSCRIPTION_TIER_AGENTSPACE_STARTER",
		// "SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS",
		// "SUBSCRIPTION_TIER_ENTERPRISE", "SUBSCRIPTION_TIER_EDU",
		// "SUBSCRIPTION_TIER_EDU_PRO"]
		subscription_tier!: string
	})

	#end_date: close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0 to specify a year by itself or a year and month
		// where the day isn't significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without a year.
		year?: number
	})

	#start_date: close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0 to specify a year by itself or a year and month
		// where the day isn't significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without a year.
		year?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
