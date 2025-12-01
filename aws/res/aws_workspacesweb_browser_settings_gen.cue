package res

#aws_workspacesweb_browser_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workspacesweb_browser_settings")
	close({
		additional_encryption_context?: [string]: string
		associated_portal_arns?: [...string]
		browser_policy!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		browser_settings_arn?: string
		customer_managed_key?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
