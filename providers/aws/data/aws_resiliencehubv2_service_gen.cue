package data

aws_resiliencehubv2_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_resiliencehubv2_service")
	close({
		arn!:         string
		description?: string
		kms_key_id?:  string
		name?:        string
		permission_model?: [...close({
			cross_account_role?: [...close({
				cross_account_role_arn?: string
				external_id?:            string
			})]
			invoker_role_name?: string
		})]
		policy_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		regions?: [...string]
		tags?: [string]: string
	})
}
