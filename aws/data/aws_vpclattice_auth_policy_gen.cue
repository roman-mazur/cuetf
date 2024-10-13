package data

#aws_vpclattice_auth_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_auth_policy")
	id?:                  string
	policy?:              string
	resource_identifier!: string
	state?:               string
}
