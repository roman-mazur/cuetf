package res

import "list"

google_vector_search_data_object: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vector_search_data_object")
	close({
		timeouts?: #timeouts
		vectors?: matchN(1, [#vectors, [...#vectors]])

		// The ID of the parent Collection.
		collection_id!: string

		// [Output only] Create time stamp
		create_time?: string

		// The JSON data of the DataObject. Must be a JSON object whose field
		// names match the fields defined in the parent Collection's
		// 'data_schema'.
		data?: string

		// ID of the DataObject to create.
		// The id must be 1-63 characters long, and comply with
		// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
		// Specifically, it must be 1-63 characters long and match the regular
		// expression '[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?'.
		data_object_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The etag of the DataObject, used for optimistic concurrency
		// control on updates and deletes.
		etag?: string
		id?:   string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. name of resource
		name?: string

		// [Output only] Update time stamp
		update_time?: string
		project?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vectors: close({
		dense?: matchN(1, [_#defs."/$defs/vectors/$defs/dense", list.MaxItems(1) & [..._#defs."/$defs/vectors/$defs/dense"]])
		sparse?: matchN(1, [_#defs."/$defs/vectors/$defs/sparse", list.MaxItems(1) & [..._#defs."/$defs/vectors/$defs/sparse"]])
		field_name!: string
	})

	_#defs: "/$defs/vectors/$defs/dense": close({
		// The float values of the dense vector.
		values!: [...number]
	})

	_#defs: "/$defs/vectors/$defs/sparse": close({
		// The indices corresponding to the entries in 'values'. Must
		// have the same length as 'values'.
		indices!: [...number]

		// The non-zero float values of the sparse vector.
		values!: [...number]
	})
}
