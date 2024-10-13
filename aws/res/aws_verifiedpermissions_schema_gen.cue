package res

#aws_verifiedpermissions_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedpermissions_schema")
	id?: string
	namespaces?: [...string]
	policy_store_id!: string
	definition?:      #definition

	#definition: value!: string
}
