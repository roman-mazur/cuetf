package res

#elasticstack_kibana_synthetics_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_synthetics_parameter")
	close({
		description?:         string
		id?:                  string
		key!:                 string
		share_across_spaces?: bool
		tags?: [...string]
		value!: string
	})
}
