package res

import "list"

google_firestore_field: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_field")
	close({
		index_config?: matchN(1, [#index_config, list.MaxItems(1) & [...#index_config]])
		timeouts?: #timeouts
		ttl_config?: matchN(1, [#ttl_config, list.MaxItems(1) & [...#ttl_config]])

		// The id of the collection group to configure.
		collection!: string

		// The Firestore database id. Defaults to '"(default)"'.
		database?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The id of the field to configure.
		field!: string
		id?:    string

		// The name of this field. Format:
		// 'projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/fields/{{field}}'
		name?: string

		// Whether to skip waiting for the field operation to complete.
		skip_wait?: bool
		project?:   string
	})

	#index_config: close({
		indexes?: matchN(1, [_#defs."/$defs/index_config/$defs/indexes", [..._#defs."/$defs/index_config/$defs/indexes"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ttl_config: close({
		// The offset, relative to the timestamp value from the field, used to determine
		// the document's expiration time. Formatted as the number of seconds followed
		// by 's'. For example, "60s" represents an offset of one minute. The number of
		// seconds must be between 1 and 2147483647 inclusive. To configure no offset,
		// omit this field.
		expiration_offset?: string

		// The state of TTL (time-to-live) configuration for documents that have this Field set.
		state?: string
	})

	_#defs: "/$defs/index_config/$defs/indexes": close({
		// Indicates that this field supports operations on arrayValues. Only one of
		// 'order' and 'arrayConfig' can
		// be specified. Possible values: ["CONTAINS"]
		array_config?: string

		// Indicates that this field supports ordering by the specified order or
		// comparing using =, <, <=, >, >=, !=.
		// Only one of 'order' and 'arrayConfig' can be specified. Possible values:
		// ["ASCENDING", "DESCENDING"]
		order?: string

		// The scope at which a query is run. Collection scoped queries require you specify
		// the collection at query time. Collection group scope allows queries across all
		// collections with the same id. Default value: "COLLECTION" Possible values:
		// ["COLLECTION", "COLLECTION_GROUP"]
		query_scope?: string
	})
}
