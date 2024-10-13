package res

#aws_iam_account_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_account_alias")
	account_alias!: string
	id?:            string
}
