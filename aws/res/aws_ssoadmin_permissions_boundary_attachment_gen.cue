package res

import "list"

#aws_ssoadmin_permissions_boundary_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permissions_boundary_attachment")
	close({
		id?:                 string
		instance_arn!:       string
		permission_set_arn!: string
		region?:             string
		permissions_boundary?: matchN(1, [#permissions_boundary, list.MaxItems(1) & [_, ...] & [...#permissions_boundary]])
		timeouts?: #timeouts
	})

	#permissions_boundary: close({
		managed_policy_arn?: string
		customer_managed_policy_reference?: matchN(1, [_#defs."/$defs/permissions_boundary/$defs/customer_managed_policy_reference", list.MaxItems(1) & [..._#defs."/$defs/permissions_boundary/$defs/customer_managed_policy_reference"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/permissions_boundary/$defs/customer_managed_policy_reference": close({
		name!: string
		path?: string
	})
}
