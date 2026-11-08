package res

import "list"

google_secret_manager_regional_secret_managed_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_secret_manager_regional_secret_managed_rotation")
	close({
		cloud_sql_single_user_credentials!: matchN(1, [#cloud_sql_single_user_credentials, list.MaxItems(1) & [_, ...] & [...#cloud_sql_single_user_credentials]])
		timeouts?: #timeouts
		id?:       string

		// The location of the regional secret. eg us-central1
		location!: string

		// The rotation configuration of the regional secret.
		rotation?: [...close({
			managed_rotation_status?: [...close({
				error?: [...close({
					code?:    number
					message?: string
				})]
				state?: string
			})]
		})]
		project?: string

		// The ID of the regional secret of type 'CLOUD_SQL_DB_CREDENTIALS' to enable managed rotation for.
		secret_id!: string
	})

	#cloud_sql_single_user_credentials: close({
		// The name of the Cloud SQL instance. The instance must be in the same project
		// as the regional secret.
		instance_id!: string

		// The initial password to set for the database user. If not provided, a random
		// password will be generated.
		password?: string

		// The initial password to set for the database user. If not provided, a random
		// password will be generated.
		password_wo?: string

		// Triggers update of 'password_wo' write-only. Increment this value when an
		// update to 'password_wo' is needed. For more info see [updating write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		password_wo_version?: string

		// The username of the Cloud SQL database user.
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
