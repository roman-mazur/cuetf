package data

#aws_opensearchserverless_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_access_policy")
	close({
		description?:    string
		id?:             string
		name!:           string
		policy?:         string
		policy_version?: string
		region?:         string
		type!:           string
	})
}
