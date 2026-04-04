package res

#aws_workspacesweb_ip_access_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workspacesweb_ip_access_settings")
	close({
		ip_rule?: matchN(1, [#ip_rule, [...#ip_rule]])
		additional_encryption_context?: [string]: string
		associated_portal_arns?: [...string]
		customer_managed_key?:   string
		description?:            string
		display_name!:           string
		ip_access_settings_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#ip_rule: close({
		description?: string
		ip_range!:    string
	})
}
