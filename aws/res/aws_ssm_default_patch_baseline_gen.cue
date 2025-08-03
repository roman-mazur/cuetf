package res

#aws_ssm_default_patch_baseline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_default_patch_baseline")
	close({
		baseline_id!:      string
		id?:               string
		operating_system!: string
		region?:           string
	})
}
