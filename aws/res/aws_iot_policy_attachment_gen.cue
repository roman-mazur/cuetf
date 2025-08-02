package res

#aws_iot_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_policy_attachment")
	close({
		id?:     string
		policy!: string
		region?: string
		target!: string
	})
}
