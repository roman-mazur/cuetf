package data

#aws_licensemanager_received_licenses: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_licensemanager_received_licenses")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		arns?: [...string]
		id?:     string
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
