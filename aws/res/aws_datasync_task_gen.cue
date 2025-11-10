package res

import "list"

#aws_datasync_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_task")
	close({
		arn?: string
		excludes?: matchN(1, [#excludes, list.MaxItems(1) & [...#excludes]])
		cloudwatch_log_group_arn?: string
		destination_location_arn!: string
		id?:                       string
		name?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		source_location_arn!: string
		includes?: matchN(1, [#includes, list.MaxItems(1) & [...#includes]])
		options?: matchN(1, [#options, list.MaxItems(1) & [...#options]])
		tags?: [string]: string
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		task_report_config?: matchN(1, [#task_report_config, list.MaxItems(1) & [...#task_report_config]])
		timeouts?: #timeouts
		tags_all?: [string]: string
		task_mode?: string
	})

	#excludes: close({
		filter_type?: string
		value?:       string
	})

	#includes: close({
		filter_type?: string
		value?:       string
	})

	#options: close({
		atime?:                          string
		bytes_per_second?:               number
		gid?:                            string
		log_level?:                      string
		mtime?:                          string
		object_tags?:                    string
		overwrite_mode?:                 string
		posix_permissions?:              string
		preserve_deleted_files?:         string
		preserve_devices?:               string
		security_descriptor_copy_flags?: string
		task_queueing?:                  string
		transfer_mode?:                  string
		uid?:                            string
		verify_mode?:                    string
	})

	#schedule: close({
		schedule_expression!: string
	})

	#task_report_config: close({
		report_overrides?: matchN(1, [_#defs."/$defs/task_report_config/$defs/report_overrides", list.MaxItems(1) & [..._#defs."/$defs/task_report_config/$defs/report_overrides"]])
		s3_destination!: matchN(1, [_#defs."/$defs/task_report_config/$defs/s3_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/task_report_config/$defs/s3_destination"]])
		output_type?:          string
		report_level?:         string
		s3_object_versioning?: string
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/task_report_config/$defs/report_overrides": close({
		deleted_override?:     string
		skipped_override?:     string
		transferred_override?: string
		verified_override?:    string
	})

	_#defs: "/$defs/task_report_config/$defs/s3_destination": close({
		bucket_access_role_arn!: string
		s3_bucket_arn!:          string
		subdirectory?:           string
	})
}
