package data

#aws_fsx_ontap_storage_virtual_machines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_ontap_storage_virtual_machines")
	id?: string
	ids?: [...string]
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
