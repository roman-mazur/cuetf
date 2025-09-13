package res

#aws_ce_cost_allocation_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_cost_allocation_tag")
	close({
		id?:      string
		status!:  string
		tag_key!: string
		type?:    string
	})
}
