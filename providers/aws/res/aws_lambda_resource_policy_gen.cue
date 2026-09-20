package res

aws_lambda_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_resource_policy")
	close({
		// JSON-formatted resource-based policy document to attach to the Lambda
		// resource. This replaces the entire policy, including any statements added
		// with aws_lambda_permission.
		policy!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// ARN of the Lambda function, version, or alias to attach the resource-based policy to.
		resource_arn!: string

		// Unique identifier for the current revision of the policy. Changes on every
		// update, since PutResourcePolicy always issues a new revision.
		revision_id?: string
	})
}
