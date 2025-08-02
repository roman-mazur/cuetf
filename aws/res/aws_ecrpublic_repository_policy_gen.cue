package res

#aws_ecrpublic_repository_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecrpublic_repository_policy")
	close({
		id?:              string
		policy!:          string
		region?:          string
		registry_id?:     string
		repository_name!: string
	})
}
