package data

#aws_opensearchserverless_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_security_policy")
	close({
		created_date?:       string
		description?:        string
		id?:                 string
		last_modified_date?: string
		name!:               string
		policy?:             string
		policy_version?:     string
		region?:             string
		type!:               string
	})
}
