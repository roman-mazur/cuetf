package res

import "list"

#azurerm_stream_analytics_function_javascript_uda: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_function_javascript_uda")
	close({
		input!: matchN(1, [#input, [_, ...] & [...#input]])
		id?:                      string
		name!:                    string
		script!:                  string
		stream_analytics_job_id!: string
		output!: matchN(1, [#output, list.MaxItems(1) & [_, ...] & [...#output]])
		timeouts?: #timeouts
	})

	#input: close({
		configuration_parameter?: bool
		type!:                    string
	})

	#output: close({
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
