package res

#aws_wafregional_web_acl_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_web_acl_association")
	id?:           string
	resource_arn!: string
	web_acl_id!:   string
	timeouts?:     #timeouts

	#timeouts: create?: string
}
