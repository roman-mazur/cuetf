package data

#aws_lex_slot_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lex_slot_type")
	close({
		checksum?:     string
		created_date?: string
		description?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		enumeration_value?: [...close({
			synonyms?: [...string]
			value?: string
		})]
		id?:                       string
		last_updated_date?:        string
		name!:                     string
		value_selection_strategy?: string
		version?:                  string
	})
}
