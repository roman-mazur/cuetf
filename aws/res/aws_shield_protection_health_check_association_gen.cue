package res

#aws_shield_protection_health_check_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_protection_health_check_association")
	health_check_arn!:     string
	id?:                   string
	shield_protection_id!: string
}
