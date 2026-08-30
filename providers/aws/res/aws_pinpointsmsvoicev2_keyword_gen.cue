package res

aws_pinpointsmsvoicev2_keyword: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpointsmsvoicev2_keyword")
	close({
		// Keyword to configure. 1-30 characters, upper-case, and cannot start or end with a space.
		keyword!: string

		// Action to perform when the keyword is received.
		keyword_action?: string

		// Message to send when the keyword is received.
		keyword_message!: string

		// ARN of the origination identity (phone number or pool) to attach the keyword to.
		origination_identity_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
