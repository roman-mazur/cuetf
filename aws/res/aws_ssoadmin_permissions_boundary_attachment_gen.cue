package res

import "list"

#aws_ssoadmin_permissions_boundary_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_permissions_boundary_attachment")
	id?:                 string
	instance_arn!:       string
	permission_set_arn!: string
	permissions_boundary?: #permissions_boundary | list.MaxItems(1) & [_, ...] & [...#permissions_boundary]
	timeouts?: #timeouts

	#permissions_boundary: {
		managed_policy_arn?: string
		customer_managed_policy_reference?: #permissions_boundary.#customer_managed_policy_reference | list.MaxItems(1) & [...#permissions_boundary.#customer_managed_policy_reference]

		#customer_managed_policy_reference: {
			name!: string
			path?: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
