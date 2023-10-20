package res

import "list"

#aws_ssoadmin_customer_managed_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_customer_managed_policy_attachment")
	id?:                                string
	instance_arn:                       string
	permission_set_arn:                 string
	customer_managed_policy_reference?: #customer_managed_policy_reference | list.MaxItems(1) & [_, ...] & [...#customer_managed_policy_reference]
	timeouts?:                          #timeouts

	#customer_managed_policy_reference: {
		name:  string
		path?: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
