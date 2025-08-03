package res

#aws_iam_organizations_features: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_organizations_features")
	close({
		enabled_features!: [...string]
		id?: string
	})
}
