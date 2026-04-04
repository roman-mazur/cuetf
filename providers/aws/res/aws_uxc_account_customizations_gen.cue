package res

#aws_uxc_account_customizations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_uxc_account_customizations")
	close({
		account_color?: string
		visible_regions?: [...string]
		visible_services?: [...string]
	})
}
