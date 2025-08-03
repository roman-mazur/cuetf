package res

#aws_lb_target_group_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_target_group_attachment")
	close({
		availability_zone?: string
		id?:                string
		port?:              number
		region?:            string
		target_group_arn!:  string
		target_id!:         string
	})
}
