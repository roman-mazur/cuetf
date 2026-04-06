package data

#aws_uxc_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_uxc_services")
	close({
		services?: [...string]
	})
}
