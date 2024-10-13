package res

#aws_datasync_location_fsx_lustre_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_fsx_lustre_file_system")
	arn?:                string
	creation_time?:      string
	fsx_filesystem_arn!: string
	id?:                 string
	security_group_arns!: [...string]
	subdirectory?: string
	tags?: [string]: string
	tags_all?: [string]: string
	uri?: string
}
