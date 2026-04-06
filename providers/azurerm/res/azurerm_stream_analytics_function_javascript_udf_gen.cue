package res

import "list"

#azurerm_stream_analytics_function_javascript_udf: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_function_javascript_udf")
	close({
		input!: matchN(1, [#input, [_, ...] & [...#input]])
		output!: matchN(1, [#output, list.MaxItems(1) & [_, ...] & [...#output]])
		timeouts?:                  #timeouts
		id?:                        string
		name!:                      string
		resource_group_name!:       string
		script!:                    string
		stream_analytics_job_name!: string
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
