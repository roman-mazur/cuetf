package data

#aws_ssm_maintenance_windows: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_maintenance_windows")
	id?: string
	ids?: [...string]
	filter?: #filter | [...#filter]

	#filter: {
		name: string
		values: [...string]
	}
}
