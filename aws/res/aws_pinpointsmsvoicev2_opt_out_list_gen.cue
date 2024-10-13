package res

#aws_pinpointsmsvoicev2_opt_out_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpointsmsvoicev2_opt_out_list")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]: string
	tags_all?: [string]: string
}
