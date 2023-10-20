package res

#aws_iot_thing_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_thing_group_membership")
	id?:                     string
	override_dynamic_group?: bool
	thing_group_name:        string
	thing_name:              string
}
