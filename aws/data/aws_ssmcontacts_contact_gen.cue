package data

#aws_ssmcontacts_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_contact")
	close({
		alias?:        string
		arn!:          string
		display_name?: string
		id?:           string
		region?:       string
		tags?: [string]: string
		type?: string
	})
}
