package res

#aws_glue_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_resource_policy")
	close({
		enable_hybrid?: string
		id?:            string
		policy!:        string
		region?:        string
	})
}
