package res

#aws_ssm_default_patch_baseline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_default_patch_baseline")
	baseline_id!:      string
	id?:               string
	operating_system!: string
}
