package res

#google_document_ai_warehouse_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_document_ai_warehouse_location")
	close({
		// The access control mode for accessing the customer data.
		// Possible values:
		// ["ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI",
		// "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID",
		// "ACL_MODE_UNIVERSAL_ACCESS"]
		access_control_mode!: string

		// The type of database used to store customer data. Possible
		// values: ["DB_INFRA_SPANNER", "DB_CLOUD_SQL_POSTGRES"]
		database_type!: string

		// The default role for the person who create a document. Possible
		// values: ["DOCUMENT_ADMIN", "DOCUMENT_EDITOR",
		// "DOCUMENT_VIEWER"]
		document_creator_default_role?: string
		id?:                            string

		// The KMS key used for CMEK encryption. It is required that
		// the kms key is in the same region as the endpoint. The
		// same key will be used for all provisioned resources, if
		// encryption is available. If the kmsKey is left empty, no
		// encryption will be enforced.
		kms_key?:  string
		timeouts?: #timeouts

		// The location in which the instance is to be provisioned. It
		// takes the form projects/{projectNumber}/locations/{location}.
		location!: string

		// The unique identifier of the project.
		project_number!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
