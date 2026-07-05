package res

google_migration_center_import_data_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_import_data_file")
	close({
		timeouts?: #timeouts

		// The timestamp when the file was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User-friendly display name. Maximum length is 63 characters.
		display_name?: string

		// Possible values:
		// IMPORT_JOB_FORMAT_RVTOOLS_XLSX
		// IMPORT_JOB_FORMAT_RVTOOLS_CSV
		// IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV
		// IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV
		// IMPORT_JOB_FORMAT_STRATOZONE_CSV
		// IMPORT_JOB_FORMAT_DATABASE_ZIP
		format!: string
		id?:     string

		// The ID of the new data file.
		import_data_file_id!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		import_job!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The name of the file.
		name?: string

		// The state of the import data file.
		// Possible values:
		// CREATING
		// ACTIVE
		state?:   string
		project?: string

		// A resource that contains a URI to which a data file can be uploaded.
		upload_file_info?: [...close({
			headers?: [string]: string
			signed_uri?:          string
			uri_expiration_time?: string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
