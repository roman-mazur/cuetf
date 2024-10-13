package res

#aws_shield_protection_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_shield_protection_group")
	aggregation!: string
	id?:          string
	members?: [...string]
	pattern!:              string
	protection_group_arn?: string
	protection_group_id!:  string
	resource_type?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
