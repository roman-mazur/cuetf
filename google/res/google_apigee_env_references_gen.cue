package res

#google_apigee_env_references: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_env_references")
	close({
		// Optional. A human-readable description of this reference.
		description?: string

		// The Apigee environment group associated with the Apigee
		// environment,
		// in the format
		// 'organizations/{{org_name}}/environments/{{env_name}}'.
		env_id!: string

		// Required. The resource id of this reference. Values must match
		// the regular expression [\w\s-.]+.
		name!: string
		id?:   string

		// Required. The id of the resource to which this reference
		// refers. Must be the id of a resource that exists in the parent
		// environment and is of the given resourceType.
		refers!:   string
		timeouts?: #timeouts

		// The type of resource referred to by this reference. Valid
		// values are 'KeyStore' or 'TrustStore'.
		resource_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
