package res

#aws_wafregional_web_acl_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_web_acl_association")
	close({
		timeouts?:     #timeouts
		id?:           string
		region?:       string
		resource_arn!: string
		web_acl_id!:   string
	})

	#timeouts: close({
		create?: string
	})
}
