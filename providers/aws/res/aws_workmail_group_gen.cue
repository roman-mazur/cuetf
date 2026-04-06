package res

#aws_workmail_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workmail_group")
	close({
		// Timestamp when the group was disabled from WorkMail use.
		disabled_date?: string

		// Primary email address used to register the group with WorkMail.
		email!: string

		// Timestamp when the group was enabled for WorkMail use.
		enabled_date?: string

		// Identifier of the group.
		group_id?: string

		// Whether to hide the group from the global address list.
		hidden_from_global_address_list?: bool

		// Name of the group.
		name!: string

		// Identifier of the WorkMail organization where the group is
		// managed.
		organization_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Current WorkMail state of the group.
		state?: string
	})
}
