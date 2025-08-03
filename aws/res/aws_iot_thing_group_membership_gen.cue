package res

#aws_iot_thing_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_thing_group_membership")
	close({
		id?:                     string
		override_dynamic_group?: bool
		region?:                 string
		thing_group_name!:       string
		thing_name!:             string
	})
}
