package res

#aws_iam_outbound_web_identity_federation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_outbound_web_identity_federation")
	close({
		issuer_identifier?: string
	})
}
