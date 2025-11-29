package res

import "list"

#google_data_loss_prevention_deidentify_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_loss_prevention_deidentify_template")
	close({
		// The creation timestamp of an deidentifyTemplate. Set by the
		// server.
		create_time?: string

		// A description of the template.
		description?: string

		// User set display name of the template.
		display_name?: string

		// The resource name of the template. Set by the server.
		name?: string
		id?:   string

		// The parent of the template in any of the following formats:
		//
		// * 'projects/{{project}}'
		// * 'projects/{{project}}/locations/{{location}}'
		// * 'organizations/{{organization_id}}'
		// * 'organizations/{{organization_id}}/locations/{{location}}'
		parent!: string
		deidentify_config!: matchN(1, [#deidentify_config, list.MaxItems(1) & [_, ...] & [...#deidentify_config]])
		timeouts?: #timeouts

		// The template id can contain uppercase and lowercase letters,
		// numbers, and hyphens;
		// that is, it must match the regular expression: [a-zA-Z\d-_]+.
		// The maximum length is
		// 100 characters. Can be empty to allow the system to generate
		// one.
		template_id?: string

		// The last update timestamp of an deidentifyTemplate. Set by the
		// server.
		update_time?: string
	})

	#deidentify_config: close({
		image_transformations?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations"]])
		info_type_transformations?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations"]])
		record_transformations?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations": close({
		transforms!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms": close({
		all_info_types?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_info_types", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_info_types"]])
		all_text?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_text", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_text"]])
		redaction_color?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/redaction_color", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/redaction_color"]])
		selected_info_types?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_info_types": close({})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/all_text": close({})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/redaction_color": close({
		// The amount of blue in the color as a value in the interval [0,
		// 1].
		blue?: number

		// The amount of green in the color as a value in the interval [0,
		// 1].
		green?: number

		// The amount of red in the color as a value in the interval [0,
		// 1].
		red?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types": close({
		info_types!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/image_transformations/$defs/transforms/$defs/selected_info_types/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations": close({
		transformations!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations": close({
		info_types?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types", [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types"]])
		primitive_transformation!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation": close({
		bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config"]])
		character_mask_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config"]])

		// Replace each matching finding with the name of the info type.
		replace_with_info_type_config?: bool
		crypto_deterministic_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config"]])
		crypto_hash_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config"]])
		crypto_replace_ffx_fpe_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config"]])
		date_shift_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config"]])
		fixed_size_bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config"]])
		redact_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config"]])
		replace_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config"]])
		replace_dictionary_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config"]])
		time_part_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config": close({
		buckets?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets", [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets": close({
		max?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max"]])
		min?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min"]])
		replacement_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config": close({
		// Character to use to mask the sensitive values—for example, *
		// for an alphabetic string such as a name, or 0 for a numeric
		// string
		// such as ZIP code or credit card number. This string must have a
		// length of 1. If not supplied, this value defaults to * for
		// strings, and 0 for digits.
		masking_character?: string
		characters_to_ignore?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore", [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore"]])

		// Number of characters to mask. If not set, all matching chars
		// will be masked. Skipped characters do not count towards this
		// tally.
		number_to_mask?: number

		// Mask characters in reverse order. For example, if
		// masking_character is 0, number_to_mask is 14, and
		// reverse_order is 'false', then the
		// input string '1234-5678-9012-3456' is masked as
		// '00000000000000-3456'.
		reverse_order?: bool
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore": close({
		// Characters to not transform when masking.
		characters_to_skip?: string

		// Common characters to not transform when masking. Useful to
		// avoid removing punctuation. Possible values: ["NUMERIC",
		// "ALPHA_UPPER_CASE", "ALPHA_LOWER_CASE", "PUNCTUATION",
		// "WHITESPACE"]
		common_characters_to_ignore?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context"]])
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key"]])
		surrogate_info_type?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name?: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config": close({
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config": close({
		// Common alphabets. Possible values:
		// ["FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED", "NUMERIC",
		// "HEXADECIMAL", "UPPER_CASE_ALPHA_NUMERIC", "ALPHA_NUMERIC"]
		common_alphabet?: string
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context"]])

		// This is supported by mapping these to the alphanumeric
		// characters that the FFX mode natively supports. This happens
		// before/after encryption/decryption. Each character listed must
		// appear only once. Number of characters must be in the range
		// \[2, 95\]. This must be encoded as ASCII. The order of
		// characters does not matter. The full list of allowed
		// characters is:
		//
		// ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
		// ~'!@#$%^&*()_-+={[}]|:;"'<,>.?/''
		custom_alphabet?: string

		// The native way to select the alphabet. Must be in the range
		// \[2, 95\].
		radix?: number
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key"]])
		surrogate_info_type?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name?: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context"]])
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key"]])

		// Range of shift in days. Negative means shift to earlier in
		// time.
		lower_bound_days!: number

		// Range of shift in days. Actual shift will be selected at random
		// within this range (inclusive ends).
		// Negative means shift to earlier in time. Must not be more than
		// 365250 days (1000 years) each direction.
		upper_bound_days!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config": close({
		lower_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound"]])
		upper_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound"]])

		// Size of each bucket (except for minimum and maximum buckets).
		// So if lower_bound = 10, upper_bound = 89, and bucketSize = 10,
		// then the following buckets would be used: -10, 10-20, 20-30,
		// 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
		// Precision up to 2 decimals works.
		bucket_size!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound": close({
		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound": close({
		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config": close({})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config": close({
		new_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value"]])

		// An integer value.
		integer_value?: number
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value": close({
		// Day of month. Must be from 1 to 31 and valid for the year and
		// month, or 0 if specifying a
		// year by itself or a year and month where the day is not
		// significant.
		day?: number

		// Month of year. Must be from 1 to 12, or 0 if specifying a year
		// without a month and day.
		month?: number

		// Year of date. Must be from 1 to 9999, or 0 if specifying a date
		// without a year.
		year?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config": close({
		word_list!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one phrase and every phrase must contain at
		// least 2 characters that are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/deidentify_config/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config": close({
		// The part of the time to keep. Possible values: ["YEAR",
		// "MONTH", "DAY_OF_MONTH", "DAY_OF_WEEK", "WEEK_OF_YEAR",
		// "HOUR_OF_DAY"]
		part_to_extract?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations": close({
		field_transformations?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations"]])
		record_suppressions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations": close({
		condition?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition"]])
		fields!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/fields", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/fields"]])
		info_type_transformations?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations"]])
		primitive_transformation?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition": close({
		expressions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions": close({
		conditions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions"]])

		// The operator to apply to the result of conditions. Default and
		// currently only supported value is AND Default value: "AND"
		// Possible values: ["AND"]
		logical_operator?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions": close({
		conditions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions": close({
		field!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field"]])
		value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value"]])

		// Operator used to compare the field or infoType to the value.
		// Possible values: ["EQUAL_TO", "NOT_EQUAL_TO", "GREATER_THAN",
		// "LESS_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN_OR_EQUALS",
		// "EXISTS"]
		operator!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/fields": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations": close({
		transformations!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations": close({
		info_types?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types"]])
		primitive_transformation!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation": close({
		bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config"]])
		character_mask_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config"]])
		crypto_deterministic_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config"]])
		crypto_hash_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config"]])
		crypto_replace_ffx_fpe_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config"]])
		date_shift_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config"]])
		fixed_size_bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config"]])
		redact_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config"]])
		replace_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config"]])
		replace_dictionary_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config"]])
		replace_with_info_type_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_with_info_type_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_with_info_type_config"]])
		time_part_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config": close({
		buckets!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets", [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets": close({
		max?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max"]])
		min?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min"]])
		replacement_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value": close({
		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string

		// A string value.
		string_value?: string
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value"]])
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value"]])

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config": close({
		// Character to use to mask the sensitive values—for example, *
		// for an alphabetic string such as a name, or 0 for a numeric
		// string
		// such as ZIP code or credit card number. This string must have a
		// length of 1. If not supplied, this value defaults to * for
		// strings, and 0 for digits.
		masking_character?: string
		characters_to_ignore?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore"]])

		// Number of characters to mask. If not set, all matching chars
		// will be masked. Skipped characters do not count towards this
		// tally.
		// If number_to_mask is negative, this denotes inverse masking.
		// Cloud DLP masks all but a number of characters. For example,
		// suppose you have the following values:
		// - 'masking_character' is *
		// - 'number_to_mask' is -4
		// - 'reverse_order' is false
		// - 'characters_to_ignore' includes -
		// - Input string is 1234-5678-9012-3456
		//
		// The resulting de-identified string is ****-****-****-3456.
		// Cloud DLP masks all but the last four characters. If
		// reverseOrder is true, all but the first four characters are
		// masked as 1234-****-****-****.
		number_to_mask?: number

		// Mask characters in reverse order. For example, if
		// masking_character is 0, number_to_mask is 14, and
		// reverse_order is 'false', then the
		// input string '1234-5678-9012-3456' is masked as
		// '00000000000000-3456'.
		reverse_order?: bool
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore": close({
		// Characters to not transform when masking. Only one of this or
		// 'common_characters_to_ignore' must be specified.
		characters_to_skip?: string

		// Common characters to not transform when masking. Useful to
		// avoid removing punctuation. Only one of this or
		// 'characters_to_skip' must be specified. Possible values:
		// ["NUMERIC", "ALPHA_UPPER_CASE", "ALPHA_LOWER_CASE",
		// "PUNCTUATION", "WHITESPACE"]
		common_characters_to_ignore?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context"]])
		crypto_key!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key"]])
		surrogate_info_type!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name!: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config": close({
		crypto_key!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config": close({
		// Common alphabets. Only one of this, 'custom_alphabet' or
		// 'radix' must be specified. Possible values: ["NUMERIC",
		// "HEXADECIMAL", "UPPER_CASE_ALPHA_NUMERIC", "ALPHA_NUMERIC"]
		common_alphabet?: string
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context"]])

		// This is supported by mapping these to the alphanumeric
		// characters that the FFX mode natively supports. This happens
		// before/after encryption/decryption. Each character listed must
		// appear only once. Number of characters must be in the range
		// \[2, 95\]. This must be encoded as ASCII. The order of
		// characters does not matter. The full list of allowed
		// characters is:
		//
		// ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
		// ~'!@#$%^&*()_-+={[}]|:;"'<,>.?/''. Only one of this,
		// 'common_alphabet' or 'radix' must be specified.
		custom_alphabet?: string

		// The native way to select the alphabet. Must be in the range
		// \[2, 95\]. Only one of this, 'custom_alphabet' or
		// 'common_alphabet' must be specified.
		radix?: number
		crypto_key!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key"]])
		surrogate_info_type?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name!: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context"]])
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key"]])

		// For example, -5 means shift date to at most 5 days back in the
		// past.
		lower_bound_days!: number

		// Range of shift in days. Actual shift will be selected at random
		// within this range (inclusive ends). Negative means shift to
		// earlier in time. Must not be more than 365250 days (1000
		// years) each direction.
		//
		// For example, 3 means shift date to at most 3 days into the
		// future.
		upper_bound_days!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config": close({
		lower_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound"]])
		upper_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound"]])

		// Size of each bucket (except for minimum and maximum buckets).
		// So if lower_bound = 10, upper_bound = 89, and bucketSize = 10,
		// then the following buckets would be used: -10, 10-20, 20-30,
		// 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
		// Precision up to 2 decimals works.
		bucket_size!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound": close({
		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound": close({
		// A float value.
		float_value?: number

		// An integer value (int64 format)
		integer_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/redact_config": close({})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config": close({
		new_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config": close({
		word_list!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one phrase and every phrase must contain at
		// least 2 characters that are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/replace_with_info_type_config": close({})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/info_type_transformations/$defs/transformations/$defs/primitive_transformation/$defs/time_part_config": close({
		// The part of the time to keep. Possible values: ["YEAR",
		// "MONTH", "DAY_OF_MONTH", "DAY_OF_WEEK", "WEEK_OF_YEAR",
		// "HOUR_OF_DAY"]
		part_to_extract!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation": close({
		bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config"]])
		character_mask_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config"]])
		crypto_deterministic_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config"]])
		crypto_hash_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config"]])
		crypto_replace_ffx_fpe_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config"]])
		date_shift_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config"]])
		fixed_size_bucketing_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config"]])
		redact_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/redact_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/redact_config"]])
		replace_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config"]])
		replace_dictionary_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config"]])
		time_part_config?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/time_part_config", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/time_part_config"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config": close({
		buckets?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets": close({
		max?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max"]])
		min?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min"]])
		replacement_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/max/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/min/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/bucketing_config/$defs/buckets/$defs/replacement_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config": close({
		// Character to use to mask the sensitive values—for example, *
		// for an alphabetic string such as a name, or 0 for a numeric
		// string
		// such as ZIP code or credit card number. This string must have a
		// length of 1. If not supplied, this value defaults to * for
		// strings, and 0 for digits.
		masking_character?: string
		characters_to_ignore?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore"]])

		// Number of characters to mask. If not set, all matching chars
		// will be masked. Skipped characters do not count towards this
		// tally.
		// If number_to_mask is negative, this denotes inverse masking.
		// Cloud DLP masks all but a number of characters. For example,
		// suppose you have the following values:
		// - 'masking_character' is *
		// - 'number_to_mask' is -4
		// - 'reverse_order' is false
		// - 'characters_to_ignore' includes -
		// - Input string is 1234-5678-9012-3456
		//
		// The resulting de-identified string is ****-****-****-3456.
		// Cloud DLP masks all but the last four characters. If
		// reverseOrder is true, all but the first four characters are
		// masked as 1234-****-****-****.
		number_to_mask?: number

		// Mask characters in reverse order. For example, if
		// masking_character is 0, number_to_mask is 14, and
		// reverse_order is 'false', then the
		// input string '1234-5678-9012-3456' is masked as
		// '00000000000000-3456'.
		reverse_order?: bool
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/character_mask_config/$defs/characters_to_ignore": close({
		// Characters to not transform when masking.
		characters_to_skip?: string

		// Common characters to not transform when masking. Useful to
		// avoid removing punctuation. Possible values: ["NUMERIC",
		// "ALPHA_UPPER_CASE", "ALPHA_LOWER_CASE", "PUNCTUATION",
		// "WHITESPACE"]
		common_characters_to_ignore?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context"]])
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key"]])
		surrogate_info_type?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/context": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name?: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_deterministic_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config": close({
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_hash_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config": close({
		// Common alphabets. Possible values:
		// ["FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED", "NUMERIC",
		// "HEXADECIMAL", "UPPER_CASE_ALPHA_NUMERIC", "ALPHA_NUMERIC"]
		common_alphabet?: string
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context"]])

		// This is supported by mapping these to the alphanumeric
		// characters that the FFX mode natively supports. This happens
		// before/after encryption/decryption. Each character listed must
		// appear only once. Number of characters must be in the range
		// \[2, 95\]. This must be encoded as ASCII. The order of
		// characters does not matter. The full list of allowed
		// characters is:
		//
		// ''0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
		// ~'!@#$%^&*()_-+={[}]|:;"'<,>.?/''
		custom_alphabet?: string

		// The native way to select the alphabet. Must be in the range
		// \[2, 95\].
		radix?: number
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key"]])
		surrogate_info_type?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/context": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed at
		// [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference)
		// when specifying a built-in type. When sending Cloud DLP
		// results to Data Catalog, infoType names should conform to the
		// pattern '[A-Za-z0-9$-_]{1,64}'.
		name?: string

		// Optional version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/crypto_replace_ffx_fpe_config/$defs/surrogate_info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config": close({
		context?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context"]])
		crypto_key?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key"]])

		// For example, -5 means shift date to at most 5 days back in the
		// past.
		lower_bound_days!: number

		// Range of shift in days. Actual shift will be selected at random
		// within this range (inclusive ends). Negative means shift to
		// earlier in time. Must not be more than 365250 days (1000
		// years) each direction.
		//
		// For example, 3 means shift date to at most 3 days into the
		// future.
		upper_bound_days!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/context": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key": close({
		kms_wrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped"]])
		transient?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient"]])
		unwrapped?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/kms_wrapped": close({
		// The resource name of the KMS CryptoKey to use for unwrapping.
		crypto_key_name!: string

		// The wrapped data crypto key.
		//
		// A base64-encoded string.
		wrapped_key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/transient": close({
		// Name of the key. This is an arbitrary string used to
		// differentiate different keys. A unique key is generated per
		// name: two separate 'TransientCryptoKey' protos share the same
		// generated key if their names are the same. When the data
		// crypto key is generated, this name is not used in any way
		// (repeating the api call will result in a different key being
		// generated).
		name!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/date_shift_config/$defs/crypto_key/$defs/unwrapped": close({
		// A 128/192/256 bit key.
		//
		// A base64-encoded string.
		key!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config": close({
		lower_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound"]])
		upper_bound!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound"]])

		// Size of each bucket (except for minimum and maximum buckets).
		// So if lower_bound = 10, upper_bound = 89, and bucketSize = 10,
		// then the following buckets would be used: -10, 10-20, 20-30,
		// 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
		// Precision up to 2 decimals works.
		bucket_size!: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/lower_bound/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/fixed_size_bucketing_config/$defs/upper_bound/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/redact_config": close({})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config": close({
		new_value!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_config/$defs/new_value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config": close({
		word_list?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/replace_dictionary_config/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one phrase and every phrase must contain at
		// least 2 characters that are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/field_transformations/$defs/primitive_transformation/$defs/time_part_config": close({
		// The part of the time to keep. Possible values: ["YEAR",
		// "MONTH", "DAY_OF_MONTH", "DAY_OF_WEEK", "WEEK_OF_YEAR",
		// "HOUR_OF_DAY"]
		part_to_extract?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions": close({
		condition?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition": close({
		expressions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions": close({
		conditions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions"]])

		// The operator to apply to the result of conditions. Default and
		// currently only supported value is AND. Default value: "AND"
		// Possible values: ["AND"]
		logical_operator?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions": close({
		conditions?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions", [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions"]])
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions": close({
		field!: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field"]])
		value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value"]])

		// Operator used to compare the field or infoType to the value.
		// Possible values: ["EQUAL_TO", "NOT_EQUAL_TO", "GREATER_THAN",
		// "LESS_THAN", "GREATER_THAN_OR_EQUALS", "LESS_THAN_OR_EQUALS",
		// "EXISTS"]
		operator!: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/field": close({
		// Name describing the field.
		name?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value": close({
		// A boolean value.
		boolean_value?: bool

		// Represents a day of the week. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		day_of_week_value?: string

		// A float value.
		float_value?: number
		date_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value"]])

		// An integer value (int64 format)
		integer_value?: string
		time_value?: matchN(1, [_#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value", list.MaxItems(1) & [..._#defs."/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value"]])

		// A string value.
		string_value?: string

		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		timestamp_value?: string
	})

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/date_value": close({
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

	_#defs: "/$defs/deidentify_config/$defs/record_transformations/$defs/record_suppressions/$defs/condition/$defs/expressions/$defs/conditions/$defs/conditions/$defs/value/$defs/time_value": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})
}
