package data

#aws_inspector_rules_packages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector_rules_packages")
	close({
		arns?: [...string]
		id?:     string
		region?: string
	})
}
