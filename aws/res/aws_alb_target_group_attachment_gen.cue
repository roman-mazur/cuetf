package res

#aws_alb_target_group_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_alb_target_group_attachment")
	availability_zone?: string
	id?:                string
	port?:              number
	target_group_arn:   string
	target_id:          string
}
