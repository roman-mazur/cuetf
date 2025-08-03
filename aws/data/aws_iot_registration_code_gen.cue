package data

#aws_iot_registration_code: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_registration_code")
	close({
		id?:                string
		region?:            string
		registration_code?: string
	})
}
