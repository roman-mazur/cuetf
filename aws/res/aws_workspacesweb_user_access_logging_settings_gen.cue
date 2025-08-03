package res

#aws_workspacesweb_user_access_logging_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_user_access_logging_settings")
	close({
		associated_portal_arns?: [...string]
		kinesis_stream_arn!: string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_access_logging_settings_arn?: string
	})
}
