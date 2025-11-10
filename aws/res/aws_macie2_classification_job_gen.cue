package res

import "list"

#aws_macie2_classification_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_classification_job")
	close({
		created_at?: string
		custom_data_identifier_ids?: [...string]
		description?: string
		id?:          string
		initial_run?: bool
		job_arn?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		job_id?:     string
		job_status?: string
		job_type!:   string
		s3_job_definition!: matchN(1, [#s3_job_definition, list.MaxItems(1) & [_, ...] & [...#s3_job_definition]])
		name?: string
		schedule_frequency?: matchN(1, [#schedule_frequency, list.MaxItems(1) & [...#schedule_frequency]])
		name_prefix?:         string
		sampling_percentage?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		user_paused_details?: [...close({
			job_expires_at?:                           string
			job_imminent_expiration_health_event_arn?: string
			job_paused_at?:                            string
		})]
		timeouts?: #timeouts
	})

	#s3_job_definition: close({
		bucket_criteria?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria"]])
		bucket_definitions?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_definitions", [..._#defs."/$defs/s3_job_definition/$defs/bucket_definitions"]])
		scoping?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping"]])
	})

	#schedule_frequency: close({
		daily_schedule?:   bool
		monthly_schedule?: number
		weekly_schedule?:  string
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria": close({
		excludes?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes"]])
		includes?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes": close({
		and?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and", [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and": close({
		simple_criterion?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/simple_criterion", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/simple_criterion"]])
		tag_criterion?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/simple_criterion": close({
		comparator?: string
		key?:        string
		values?: [...string]
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion": close({
		tag_values?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion/$defs/tag_values", [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion/$defs/tag_values"]])
		comparator?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/excludes/$defs/and/$defs/tag_criterion/$defs/tag_values": close({
		key?:   string
		value?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes": close({
		and?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and", [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and": close({
		simple_criterion?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/simple_criterion", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/simple_criterion"]])
		tag_criterion?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/simple_criterion": close({
		comparator?: string
		key?:        string
		values?: [...string]
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion": close({
		tag_values?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion/$defs/tag_values", [..._#defs."/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion/$defs/tag_values"]])
		comparator?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_criteria/$defs/includes/$defs/and/$defs/tag_criterion/$defs/tag_values": close({
		key?:   string
		value?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/bucket_definitions": close({
		account_id!: string
		buckets!: [...string]
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping": close({
		excludes?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes"]])
		includes?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/excludes": close({
		and?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and", [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and": close({
		simple_scope_term?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/simple_scope_term", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/simple_scope_term"]])
		tag_scope_term?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/simple_scope_term": close({
		comparator?: string
		key?:        string
		values?: [...string]
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term": close({
		tag_values?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term/$defs/tag_values", [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term/$defs/tag_values"]])
		comparator?: string
		key?:        string
		target?:     string
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/excludes/$defs/and/$defs/tag_scope_term/$defs/tag_values": close({
		key?:   string
		value?: string
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/includes": close({
		and?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and", [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and": close({
		simple_scope_term?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/simple_scope_term", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/simple_scope_term"]])
		tag_scope_term?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term", list.MaxItems(1) & [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term"]])
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/simple_scope_term": close({
		comparator?: string
		key?:        string
		values?: [...string]
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term": close({
		tag_values?: matchN(1, [_#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term/$defs/tag_values", [..._#defs."/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term/$defs/tag_values"]])
		comparator?: string
		key?:        string
		target?:     string
	})

	_#defs: "/$defs/s3_job_definition/$defs/scoping/$defs/includes/$defs/and/$defs/tag_scope_term/$defs/tag_values": close({
		key?:   string
		value?: string
	})
}
