package res

import "list"

#aws_codecatalyst_dev_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecatalyst_dev_environment")
	alias?:                      string
	id?:                         string
	inactivity_timeout_minutes?: number
	instance_type!:              string
	project_name!:               string
	space_name!:                 string
	ides?: #ides | list.MaxItems(1) & [_, ...] & [...#ides]
	persistent_storage?: #persistent_storage | list.MaxItems(1) & [_, ...] & [...#persistent_storage]
	repositories?: #repositories | list.MaxItems(100) & [...#repositories]
	timeouts?: #timeouts

	#ides: {
		name?:    string
		runtime?: string
	}

	#persistent_storage: size!: number

	#repositories: {
		branch_name?:     string
		repository_name!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
