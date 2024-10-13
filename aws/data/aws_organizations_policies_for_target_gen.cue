package data

#aws_organizations_policies_for_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_policies_for_target")
	filter!: string
	id?:     string
	ids?: [...string]
	target_id!: string
}
