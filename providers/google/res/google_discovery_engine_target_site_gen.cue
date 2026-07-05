package res

google_discovery_engine_target_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_target_site")
	close({
		timeouts?: #timeouts

		// The unique id of the data store.
		data_store_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// If set to false, a uri_pattern is generated to include all pages whose
		// address contains the provided_uri_pattern. If set to true, an uri_pattern
		// is generated to try to be an exact match of the provided_uri_pattern or
		// just the specific page if the provided_uri_pattern is a specific one.
		// provided_uri_pattern is always normalized to generate the URI pattern to
		// be used by the search engine.
		exact_match?: bool

		// Site search indexing failure reasons.
		failure_reason?: [...close({
			quota_failure?: [...close({
				total_required_quota?: number
			})]
		})]

		// This is system-generated based on the 'provided_uri_pattern'.
		generated_uri_pattern?: string
		id?:                    string

		// The indexing status.
		indexing_status?: string

		// The geographic location where the data store should reside. The value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the target site. Values are of the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/targetSites/{target_site_id}'.
		// This field must be a UTF-8 encoded string with a length limit of 1024
		// characters.
		name?: string

		// The user provided URI pattern from which the 'generated_uri_pattern' is
		// generated.
		provided_uri_pattern!: string
		project?:              string

		// Root domain of the 'provided_uri_pattern'.
		root_domain_uri?: string

		// Site ownership and validity verification status.
		site_verification_info?: [...close({
			site_verification_state?: string
			verify_time?:             string
		})]

		// The unique id of the target site.
		target_site_id?: string

		// The possible target site types. Possible values: ["INCLUDE", "EXCLUDE"]
		type?: string

		// The target site's last updated time.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
