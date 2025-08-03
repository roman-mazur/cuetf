package data

import "list"

#aws_codecatalyst_dev_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecatalyst_dev_environment")
	close({
		alias?:      string
		creator_id?: string
		env_id!:     string
		id?:         string
		ides?: [...close({
			name?:    string
			runtime?: string
		})]
		inactivity_timeout_minutes?: number
		instance_type?:              string
		last_updated_time?:          string
		repositories?: matchN(1, [#repositories, list.MaxItems(100) & [...#repositories]])
		persistent_storage?: [...close({
			size?: number
		})]
		project_name!:  string
		region?:        string
		space_name!:    string
		status?:        string
		status_reason?: string
		tags?: [string]: string
	})

	#repositories: close({
		branch_name?:     string
		repository_name?: string
	})
}
