package res

#aws_ce_cost_allocation_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ce_cost_allocation_tag")
	id?:     string
	status:  string
	tag_key: string
	type?:   string
}
