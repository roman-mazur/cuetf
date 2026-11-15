package res

aws_networksecuritymanager_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networksecuritymanager_deployment")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		description?:  string
		is_published?: bool
		name!:         string
		policy_arns!: [...string]
		scope_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#configuration: close({
		enable_cross_account_visibility!: bool
	})
}
