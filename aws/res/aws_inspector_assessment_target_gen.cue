package res

#aws_inspector_assessment_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector_assessment_target")
	arn?:                string
	id?:                 string
	name!:               string
	resource_group_arn?: string
}
