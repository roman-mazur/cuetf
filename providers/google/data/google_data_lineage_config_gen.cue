package data

#google_data_lineage_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_data_lineage_config")
	close({
		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Used for optimistic concurrency control when patching config.
		etag?: string
		id?:   string

		// Defines how Lineage should be ingested for this resource.
		ingestion?: [...close({
			rule?: [...close({
				integration_selector?: [...close({
					integration?: string
				})]
				lineage_enablement?: [...close({
					enabled?: bool
				})]
			})]
		})]

		// The region of the data lineage configuration for integration.
		location!: string

		// Identifier. The resource name of the config.
		// Format:
		// organizations/{organization_id}/locations/{location}/config,
		// folders/{folder_id}/locations/{location}/config,
		// projects/{project_id}/locations/{location}/config,
		// or projects/{project_number}/locations/{location}/config.
		name?: string

		// Parent scope for the config.
		// Format: projects/{project-id|project-number} or
		// folders/{folder-number} or
		// organizations/{organization-number}.
		parent!: string
	})
}
