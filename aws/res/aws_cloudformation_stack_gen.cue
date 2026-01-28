package res

#aws_cloudformation_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudformation_stack")
	close({
		capabilities?: [...string]
		disable_rollback?: bool
		iam_role_arn?:     string
		id?:               string
		name!:             string
		notification_arns?: [...string]
		on_failure?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		outputs?: [string]: string
		timeouts?: #timeouts
		parameters?: [string]: string
		policy_body?: string
		policy_url?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		template_body?:      string
		template_url?:       string
		timeout_in_minutes?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
