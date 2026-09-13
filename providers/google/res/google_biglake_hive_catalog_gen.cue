package res

google_biglake_hive_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_hive_catalog")
	close({
		timeouts?: #timeouts

		// Output only. The creation time of the catalog.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the Hive catalog.
		description?: string
		id?:          string

		// Cloud Storage location path where the catalog data will be stored. Format:
		// gs://bucket/path/to/catalog
		location_uri!: string

		// Name of the Hive Catalog.
		name!: string

		// The primary location for mirroring the remote catalog metadata. It must be
		// a BigLake-supported location, and it should be proximate to the remote
		// catalog's location.
		primary_location!: string

		// Output only. The replicas for the catalog metadata.
		replicas?: [...close({
			region?: string
			state?:  string
		})]
		project?: string

		// Output only. The update time of the catalog.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
