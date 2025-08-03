package res

#aws_workspacesweb_ip_access_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_ip_access_settings")
	close({
		additional_encryption_context?: [string]: string
		ip_rule?: matchN(1, [#ip_rule, [...#ip_rule]])
		associated_portal_arns?: [...string]
		customer_managed_key?:   string
		description?:            string
		display_name!:           string
		ip_access_settings_arn?: string
		region?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#ip_rule: close({
		description?: string
		ip_range!:    string
	})
}
