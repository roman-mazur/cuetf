package data

#aws_arn: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_arn")
	close({
		account?:   string
		arn!:       string
		id?:        string
		partition?: string
		region?:    string
		resource?:  string
		service?:   string
	})
}
