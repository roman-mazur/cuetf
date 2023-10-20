package data

import "list"

#aws_codecatalyst_dev_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecatalyst_dev_environment")
	alias?:      string
	creator_id?: string
	env_id:      string
	id?:         string
	ides?: [...{
		name?:    string
		runtime?: string
	}]
	inactivity_timeout_minutes?: number
	instance_type?:              string
	last_updated_time?:          string
	persistent_storage?: [...{
		size?: number
	}]
	project_name:   string
	space_name:     string
	status?:        string
	status_reason?: string
	tags?: [string]: string
	repositories?: #repositories | list.MaxItems(100) & [...#repositories]

	#repositories: {
		branch_name?:     string
		repository_name?: string
	}
}
