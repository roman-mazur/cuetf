package res

#aws_shield_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_subscription")
	close({
		// Whether to automatically renew the subscription when it
		// expires.
		auto_renew?:   string
		id?:           string
		skip_destroy?: bool
	})
}
