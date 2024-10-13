package res

#elasticstack_kibana_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_kibana_space")
	color?:       string
	description?: string
	disabled_features?: [...string]
	id?:        string
	image_url?: string
	initials?:  string
	name!:      string
	space_id!:  string
}
