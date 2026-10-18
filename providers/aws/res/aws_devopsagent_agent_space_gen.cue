package res

aws_devopsagent_agent_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_devopsagent_agent_space")
	close({
		// Unique identifier of the Agent Space.
		agent_space_id?: string
		arn?:            string
		created_at?:     string

		// Description of the Agent Space.
		description?: string

		// ARN of the KMS key used to encrypt resources.
		kms_key_arn?: string

		// Locale for the Agent Space, which determines the language used in agent responses.
		locale?: string

		// Name of the Agent Space.
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
	})
}
