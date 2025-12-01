package res

import "list"

#aws_ssoadmin_customer_managed_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssoadmin_customer_managed_policy_attachment")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		instance_arn!:       string
		permission_set_arn!: string
		customer_managed_policy_reference!: matchN(1, [#customer_managed_policy_reference, list.MaxItems(1) & [_, ...] & [...#customer_managed_policy_reference]])
		timeouts?: #timeouts
	})

	#customer_managed_policy_reference: close({
		name!: string
		path?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
