package res

google_observability_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_observability_link")
	close({
		timeouts?: #timeouts

		// The bucket of the link.
		bucket!: string

		// Output only. Create timestamp.
		create_time?: string

		// The dataset of the link.
		dataset!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the link.
		description?: string

		// User friendly display name.
		display_name?: string
		id?:           string

		// The client-assigned identifier for the link.
		link_id!: string

		// The location of the link.
		location!: string

		// Identifier. Name of the link. The format is:
		// projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/links/[LINK_ID]
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
