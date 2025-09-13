package data

#google_storage_control_project_intelligence_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_control_project_intelligence_config")
	close({
		// Edition configuration of the Storage Intelligence resource.
		// Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
		edition_config?: string

		// The Intelligence config that is effective for the resource.
		effective_intelligence_config?: [...close({
			effective_edition?:   string
			intelligence_config?: string
		})]

		// Filter over location and bucket using include or exclude
		// semantics. Resources that match the include or exclude filter
		// are exclusively included or excluded from the Storage
		// Intelligence plan.
		filter?: [...close({
			excluded_cloud_storage_buckets?: [...close({
				bucket_id_regexes?: [...string]
			})]
			excluded_cloud_storage_locations?: [...close({
				locations?: [...string]
			})]
			included_cloud_storage_buckets?: [...close({
				bucket_id_regexes?: [...string]
			})]
			included_cloud_storage_locations?: [...close({
				locations?: [...string]
			})]
		})]
		id?: string

		// Identifier of the GCP project. For GCP project, this field can
		// be project name or project number.
		name!: string

		// The trial configuration of the Storage Intelligence resource.
		trial_config?: [...close({
			expire_time?: string
		})]

		// The time at which the Storage Intelligence Config resource is
		// last updated.
		update_time?: string
	})
}
