package res

#aws_inspector_assessment_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector_assessment_target")
	close({
		arn?:                string
		id?:                 string
		name!:               string
		region?:             string
		resource_group_arn?: string
	})
}
