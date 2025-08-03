package data

import "list"

#aws_emr_release_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_release_labels")
	close({
		id?:     string
		region?: string
		release_labels?: [...string]
		filters?: matchN(1, [#filters, list.MaxItems(1) & [...#filters]])
	})

	#filters: close({
		application?: string
		prefix?:      string
	})
}
