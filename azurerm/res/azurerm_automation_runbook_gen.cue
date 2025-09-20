package res

import "list"

#azurerm_automation_runbook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_runbook")
	close({
		automation_account_name!: string
		draft?: matchN(1, [#draft, list.MaxItems(1) & [...#draft]])
		content?:     string
		description?: string
		id?:          string
		job_schedule?: [...close({
			job_schedule_id?: string
			parameters?: [string]: string
			run_on?:        string
			schedule_name?: string
		})]
		location!:                 string
		log_activity_trace_level?: number
		publish_content_link?: matchN(1, [#publish_content_link, list.MaxItems(1) & [...#publish_content_link]])
		log_progress!:        bool
		log_verbose!:         bool
		name!:                string
		resource_group_name!: string
		runbook_type!:        string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#draft: close({
		content_link?: matchN(1, [_#defs."/$defs/draft/$defs/content_link", list.MaxItems(1) & [..._#defs."/$defs/draft/$defs/content_link"]])
		creation_time?:      string
		edit_mode_enabled?:  bool
		last_modified_time?: string
		output_types?: [...string]
		parameters?: matchN(1, [_#defs."/$defs/draft/$defs/parameters", [..._#defs."/$defs/draft/$defs/parameters"]])
	})

	#publish_content_link: close({
		hash?: matchN(1, [_#defs."/$defs/publish_content_link/$defs/hash", list.MaxItems(1) & [..._#defs."/$defs/publish_content_link/$defs/hash"]])
		uri!:     string
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/draft/$defs/content_link": close({
		hash?: matchN(1, [_#defs."/$defs/draft/$defs/content_link/$defs/hash", list.MaxItems(1) & [..._#defs."/$defs/draft/$defs/content_link/$defs/hash"]])
		uri!:     string
		version?: string
	})

	_#defs: "/$defs/draft/$defs/content_link/$defs/hash": close({
		algorithm!: string
		value!:     string
	})

	_#defs: "/$defs/draft/$defs/parameters": close({
		default_value?: string
		key!:           string
		mandatory?:     bool
		position?:      number
		type!:          string
	})

	_#defs: "/$defs/publish_content_link/$defs/hash": close({
		algorithm!: string
		value!:     string
	})
}
