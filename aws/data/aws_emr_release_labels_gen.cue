package data

import "list"

#aws_emr_release_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_release_labels")
	id?: string
	release_labels?: [...string]
	filters?: #filters | list.MaxItems(1) & [...#filters]

	#filters: {
		application?: string
		prefix?:      string
	}
}
