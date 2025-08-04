package res

#aws_verifiedpermissions_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_schema")
	close({
		definition?: matchN(1, [#definition, [...#definition]])
		id?: string
		namespaces?: [...string]
		policy_store_id!: string
		region?:          string
	})

	#definition: close({
		value!: string
	})
}
