package res

import "list"

#aws_accessanalyzer_analyzer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_accessanalyzer_analyzer")
	analyzer_name!: string
	arn?:           string
	id?:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?: string
	configuration?: #configuration | list.MaxItems(1) & [...#configuration]

	#configuration: {
		unused_access?: #configuration.#unused_access | list.MaxItems(1) & [...#configuration.#unused_access]

		#unused_access: unused_access_age?: number
	}
}
