package res

#aws_resourceexplorer2_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourceexplorer2_view")
	arn?:          string
	default_view?: bool
	id?:           string
	name!:         string
	tags?: [string]:     string
	tags_all?: [string]: string
	filters?: #filters | [...#filters]
	included_property?: #included_property | [...#included_property]

	#filters: filter_string!: string

	#included_property: name!: string
}
