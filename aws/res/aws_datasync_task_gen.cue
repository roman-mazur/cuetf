package res

import "list"

#aws_datasync_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_task")
	arn?:                      string
	cloudwatch_log_group_arn?: string
	destination_location_arn:  string
	id?:                       string
	name?:                     string
	source_location_arn:       string
	tags?: [string]: string
	tags_all?: [string]: string
	excludes?: #excludes | list.MaxItems(1) & [...#excludes]
	includes?: #includes | list.MaxItems(1) & [...#includes]
	options?:  #options | list.MaxItems(1) & [...#options]
	schedule?: #schedule | list.MaxItems(1) & [...#schedule]
	timeouts?: #timeouts

	#excludes: {
		filter_type?: string
		value?:       string
	}

	#includes: {
		filter_type?: string
		value?:       string
	}

	#options: {
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
	}

	#schedule: schedule_expression: string

	#timeouts: create?: string
}
