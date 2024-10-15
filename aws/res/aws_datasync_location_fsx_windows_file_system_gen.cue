package res

#aws_datasync_location_fsx_windows_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_fsx_windows_file_system")
	arn?:                string
	creation_time?:      string
	domain?:             string
	fsx_filesystem_arn!: string
	id?:                 string
	password!:           string
	security_group_arns!: [...string]
	subdirectory?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	uri?:  string
	user!: string
}
