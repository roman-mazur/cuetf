package res

#aws_synthetics_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_synthetics_group_association")
	close({
		canary_arn!: string
		group_arn?:  string
		group_id?:   string
		group_name!: string
		id?:         string
		region?:     string
	})
}
