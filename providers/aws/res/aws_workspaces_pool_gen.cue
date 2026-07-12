package res

aws_workspaces_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workspaces_pool")
	close({
		capacity?: matchN(1, [#capacity, [...#capacity]])
		timeouts?: #timeouts
		application_settings?: [...close({
			settings_group?: string
			status?:         string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		bundle_id!: string
		capacity_status?: [...close({
			active_user_sessions?:    number
			actual_user_sessions?:    number
			available_user_sessions?: number
			desired_user_sessions?:   number
		})]
		created_at?:     string
		description!:    string
		directory_id!:   string
		pool_arn?:       string
		pool_id?:        string
		pool_name!:      string
		running_mode!:   string
		s3_bucket_name?: string
		state?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeout_settings?: [...close({
			disconnect_timeout_in_seconds?:      number
			idle_disconnect_timeout_in_seconds?: number
			max_user_duration_in_seconds?:       number
		})]
	})

	#capacity: close({
		desired_user_sessions!: number
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
