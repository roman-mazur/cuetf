package data

#aws_cloudformation_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudformation_stack")
	close({
		capabilities?: [...string]
		description?:      string
		disable_rollback?: bool
		iam_role_arn?:     string
		id?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		notification_arns?: [...string]
		outputs?: [string]:    string
		parameters?: [string]: string
		tags?: [string]:       string
		template_body?:      string
		timeout_in_minutes?: number
	})
}
