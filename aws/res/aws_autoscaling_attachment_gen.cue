package res

#aws_autoscaling_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_attachment")
	close({
		autoscaling_group_name!: string
		elb?:                    string
		id?:                     string
		lb_target_group_arn?:    string
		region?:                 string
	})
}
