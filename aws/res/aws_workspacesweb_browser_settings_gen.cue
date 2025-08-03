package res

#aws_workspacesweb_browser_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_browser_settings")
	close({
		additional_encryption_context?: [string]: string
		associated_portal_arns?: [...string]
		browser_policy!:       string
		browser_settings_arn?: string
		customer_managed_key?: string
		region?:               string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
