package res

import "list"

#azurerm_application_insights_standard_web_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_insights_standard_web_test")
	close({
		application_insights_id!: string
		request?: matchN(1, [#request, list.MaxItems(1) & [_, ...] & [...#request]])
		description?: string
		enabled?:     bool
		frequency?:   number
		geo_locations!: [...string]
		id?:                   string
		location!:             string
		timeouts?:             #timeouts
		name!:                 string
		resource_group_name!:  string
		retry_enabled?:        bool
		synthetic_monitor_id?: string
		tags?: [string]: string
		timeout?: number
		validation_rules?: matchN(1, [#validation_rules, list.MaxItems(1) & [...#validation_rules]])
	})

	#request: close({
		header?: matchN(1, [_#defs."/$defs/request/$defs/header", [..._#defs."/$defs/request/$defs/header"]])
		body?:                             string
		follow_redirects_enabled?:         bool
		http_verb?:                        string
		parse_dependent_requests_enabled?: bool
		url!:                              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#validation_rules: close({
		content?: matchN(1, [_#defs."/$defs/validation_rules/$defs/content", list.MaxItems(1) & [..._#defs."/$defs/validation_rules/$defs/content"]])
		expected_status_code?:        number
		ssl_cert_remaining_lifetime?: number
		ssl_check_enabled?:           bool
	})

	_#defs: "/$defs/request/$defs/header": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/validation_rules/$defs/content": close({
		content_match!:      string
		ignore_case?:        bool
		pass_if_text_found?: bool
	})
}
