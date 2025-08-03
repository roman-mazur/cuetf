package res

import "list"

#aws_codecatalyst_dev_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecatalyst_dev_environment")
	close({
		alias?: string
		id?:    string
		ides?: matchN(1, [#ides, list.MaxItems(1) & [_, ...] & [...#ides]])
		persistent_storage?: matchN(1, [#persistent_storage, list.MaxItems(1) & [_, ...] & [...#persistent_storage]])
		repositories?: matchN(1, [#repositories, list.MaxItems(100) & [...#repositories]])
		timeouts?:                   #timeouts
		inactivity_timeout_minutes?: number
		instance_type!:              string
		project_name!:               string
		region?:                     string
		space_name!:                 string
	})

	#ides: close({
		name?:    string
		runtime?: string
	})

	#persistent_storage: close({
		size!: number
	})

	#repositories: close({
		branch_name?:     string
		repository_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
