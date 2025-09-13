package res

import "list"

#google_sql_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sql_user")
	close({
		// The deletion policy for the user. Setting ABANDON allows the
		// resource
		// to be abandoned rather than deleted. This is useful for
		// Postgres, where users cannot be deleted from the API if they
		// have been granted SQL roles. Possible values are: "ABANDON".
		deletion_policy?: string

		// The host the user can connect from. This is only supported for
		// MySQL instances. Don't set this field for PostgreSQL
		// instances. Can be an IP address. Changing this forces a new
		// resource to be created.
		host?: string
		id?:   string

		// The name of the Cloud SQL instance. Changing this forces a new
		// resource to be created.
		instance!: string

		// The name of the user. Changing this forces a new resource to be
		// created.
		name!: string

		// The password for the user. Can be updated. For Postgres
		// instances this is a Required field, unless type is set to
		// either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT.
		password?: string

		// The password for the user. Can be updated. For Postgres
		// instances this is a Required field, unless type is set to
		// either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT.
		password_wo?: string

		// The version of the password_wo.
		password_wo_version?: number
		password_policy?: matchN(1, [#password_policy, list.MaxItems(1) & [...#password_policy]])
		timeouts?: #timeouts

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The user type. It determines the method to authenticate the
		// user during login.
		// The default is the database's built-in user type.
		type?: string
		sql_server_user_details?: [...close({
			disabled?: bool
			server_roles?: [...string]
		})]
	})

	#password_policy: close({
		// Number of failed attempts allowed before the user get locked.
		allowed_failed_attempts?: number

		// If true, the check that will lock user after too many failed
		// login attempts will be enabled.
		enable_failed_attempts_check?: bool

		// If true, the user must specify the current password before
		// changing the password. This flag is supported only for MySQL.
		enable_password_verification?: bool

		// Password expiration duration with one week grace period.
		password_expiration_duration?: string
		status?: [...close({
			locked?:                   bool
			password_expiration_time?: string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
