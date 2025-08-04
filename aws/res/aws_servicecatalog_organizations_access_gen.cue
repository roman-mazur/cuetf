package res

#aws_servicecatalog_organizations_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_organizations_access")
	close({
		timeouts?: #timeouts
		enabled!:  bool
		id?:       string
	})

	#timeouts: close({
		read?: string
	})
}
