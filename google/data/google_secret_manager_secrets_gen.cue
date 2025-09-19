package data

#google_secret_manager_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secret_manager_secrets")
	close({
		// Filter string, adhering to the rules in List-operation
		// filtering
		// (https://cloud.google.com/secret-manager/docs/filtering).
		// List only secrets matching the filter. If filter is empty, all
		// secrets are listed.
		filter?:  string
		id?:      string
		project?: string
		secrets?: [...close({
			annotations?: [string]: string
			create_time?:         string
			deletion_protection?: bool
			effective_annotations?: [string]: string
			effective_labels?: [string]:      string
			expire_time?: string
			labels?: [string]: string
			name?:    string
			project?: string
			replication?: [...close({
				auto?: [...close({
					customer_managed_encryption?: [...close({
						kms_key_name?: string
					})]
				})]
				user_managed?: [...close({
					replicas?: [...close({
						customer_managed_encryption?: [...close({
							kms_key_name?: string
						})]
						location?: string
					})]
				})]
			})]
			rotation?: [...close({
				next_rotation_time?: string
				rotation_period?:    string
			})]
			secret_id?: string
			tags?: [string]:             string
			terraform_labels?: [string]: string
			topics?: [...close({
				name?: string
			})]
			ttl?: string
			version_aliases?: [string]: string
			version_destroy_ttl?: string
		})]
	})
}
