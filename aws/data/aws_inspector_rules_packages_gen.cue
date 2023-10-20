package data

#aws_inspector_rules_packages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector_rules_packages")
	arns?: [...string]
	id?: string
}
