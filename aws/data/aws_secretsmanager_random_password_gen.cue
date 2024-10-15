package data

#aws_secretsmanager_random_password: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_random_password")
	exclude_characters?:         string
	exclude_lowercase?:          bool
	exclude_numbers?:            bool
	exclude_punctuation?:        bool
	exclude_uppercase?:          bool
	id?:                         string
	include_space?:              bool
	password_length?:            number
	random_password?:            string
	require_each_included_type?: bool
}
