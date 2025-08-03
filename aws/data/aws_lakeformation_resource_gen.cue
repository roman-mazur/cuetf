package data

#aws_lakeformation_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_resource")
	close({
		arn!:                    string
		hybrid_access_enabled?:  bool
		id?:                     string
		last_modified?:          string
		region?:                 string
		role_arn?:               string
		with_federation?:        bool
		with_privileged_access?: bool
	})
}
