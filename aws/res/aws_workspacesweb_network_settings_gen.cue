package res

#aws_workspacesweb_network_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_network_settings")
	close({
		associated_portal_arns?: [...string]
		network_settings_arn?: string
		region?:               string
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id!: string
	})
}
