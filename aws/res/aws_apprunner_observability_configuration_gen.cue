package res

import "list"

#aws_apprunner_observability_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_observability_configuration")
	close({
		trace_configuration?: matchN(1, [#trace_configuration, list.MaxItems(1) & [...#trace_configuration]])
		arn?:                                  string
		id?:                                   string
		latest?:                               bool
		observability_configuration_name!:     string
		observability_configuration_revision?: number
		region?:                               string
		status?:                               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#trace_configuration: close({
		vendor?: string
	})
}
