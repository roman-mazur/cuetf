package res

#aws_api_gateway_domain_name_access_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_domain_name_access_association")
	close({
		access_association_source!:      string
		access_association_source_type!: string
		arn?:                            string
		domain_name_arn!:                string
		region?:                         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
