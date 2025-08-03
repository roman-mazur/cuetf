package data

#aws_fsx_ontap_storage_virtual_machines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_ontap_storage_virtual_machines")
	close({
		id?: string
		ids?: [...string]
		region?: string
		filter?: matchN(1, [#filter, [...#filter]])
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
