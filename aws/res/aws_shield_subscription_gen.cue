package res

#aws_shield_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_subscription")
	auto_renew?:   string
	id?:           string
	skip_destroy?: bool
}
