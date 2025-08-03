package res

#aws_wafv2_web_acl_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_web_acl_association")
	close({
		id?:           string
		region?:       string
		resource_arn!: string
		web_acl_arn!:  string
		timeouts?:     #timeouts
	})

	#timeouts: close({
		create?: string
	})
}
