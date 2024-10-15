package res

#aws_ssm_patch_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_patch_group")
	baseline_id!: string
	id?:          string
	patch_group!: string
}
