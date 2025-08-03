package data

#aws_codeartifact_repository_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_repository_endpoint")
	close({
		domain!:              string
		domain_owner?:        string
		format!:              string
		id?:                  string
		region?:              string
		repository!:          string
		repository_endpoint?: string
	})
}
