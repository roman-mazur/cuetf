package res

#aws_iot_thing_principal_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_thing_principal_attachment")
	close({
		id?:        string
		principal!: string
		region?:    string
		thing!:     string
	})
}
