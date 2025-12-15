package data

#aws_lex_bot_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lex_bot_alias")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		bot_name!:          string
		bot_version?:       string
		checksum?:          string
		created_date?:      string
		description?:       string
		id?:                string
		last_updated_date?: string
		name!:              string
	})
}
