package res

#google_dataplex_data_product_data_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_data_product_data_asset")
	close({
		access_group_configs?: matchN(1, [#access_group_configs, [...#access_group_configs]])
		timeouts?: #timeouts

		// The ID of the data asset.
		data_asset_id!: string

		// The ID of the parent data product.
		data_product_id!: string

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

		// User-defined labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the data asset.
		location!: string
		project?:  string

		// Full resource name of the cloud resource.
		resource!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique ID.
		uid?: string
	})

	#access_group_configs: close({
		access_group!: string

		// IAM roles granted on the resource.
		iam_roles?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
