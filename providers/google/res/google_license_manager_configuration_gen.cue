package res

#google_license_manager_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_license_manager_configuration")
	close({
		timeouts?: #timeouts

		// Whether the configuration is active. We suggest you deactivate
		// a configuration instead of deleting it, and allow License
		// Manager to manage deletion of the configuration.
		active?: bool

		// Id of the object.
		configuration_id!: string

		// [Output only] Create time stamp
		create_time?: string

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

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Number of units to bill for. When licensing a product that is
		// billed per-user, this means number of users. When licensing a
		// product that is billed per-pack (e.g. SQL Server), this means
		// the number of packs.
		license_count!: number

		// The region where the configuration should be created. This
		// region must be the same where the licensed software will run.
		location!: string

		// Identifier. name of resource
		name?: string

		// Name of the product for which you are setting the license
		// configuration. For supported products see
		// https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products.
		// Available values include Office2021ProfessionalPlus
		product!: string
		project?: string

		// State of the configuration.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] Update time stamp
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
