package data

#aws_secretsmanager_random_password: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_random_password")
	close({
		exclude_characters?: string
		exclude_lowercase?:  bool
		exclude_numbers?:    bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		exclude_punctuation?:        bool
		exclude_uppercase?:          bool
		id?:                         string
		include_space?:              bool
		password_length?:            number
		random_password?:            string
		require_each_included_type?: bool
	})
}
