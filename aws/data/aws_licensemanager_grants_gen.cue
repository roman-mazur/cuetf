package data

#aws_licensemanager_grants: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_licensemanager_grants")
	arns?: [...string]
	id?: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
