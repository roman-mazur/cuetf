package data

#aws_efs_access_points: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_access_points")
	close({
		arns?: [...string]
		file_system_id!: string
		id?:             string
		ids?: [...string]
		region?: string
	})
}
