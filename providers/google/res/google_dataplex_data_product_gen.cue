package res

import "list"

google_dataplex_data_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_data_product")
	close({
		access_approval_config?: matchN(1, [#access_approval_config, list.MaxItems(1) & [...#access_approval_config]])
		access_groups?: matchN(1, [#access_groups, [...#access_groups]])
		timeouts?: #timeouts

		// Number of associated data assets.
		asset_count?: number

		// Creation timestamp.
		create_time?: string

		// The ID of the data product.
		data_product_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the data product.
		description?: string

		// User-friendly display name.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Checksum for concurrency control.
		etag?: string

		// Base64 encoded image representing the data product. Max Size: 3.0MiB
		// Expected image dimensions are 512x512 pixels, however the API only
		// performs validation on size of the encoded data.
		// Note: For byte fields, the content of the fields are base64-encoded (which
		// increases the size of the data by 33-36%) when using JSON on the wire.
		icon?: string
		id?:   string

		// User-defined labels.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location for the data product.
		location!: string

		// The relative resource name of the data product.
		name?: string

		// Emails of the owners.
		owner_emails!: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// System generated unique ID.
		uid?: string

		// Last update timestamp.
		update_time?: string
	})

	#access_approval_config: close({
		// Specifies the email addresses of users who are potential approvers.
		approver_emails?: [...string]
	})

	#access_groups: close({
		principal!: matchN(1, [_#defs."/$defs/access_groups/$defs/principal", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/access_groups/$defs/principal"]])

		// Description of the access group.
		description?: string

		// User friendly display name.
		display_name!: string

		// Unique identifier of the access group.
		group_id!: string
		id!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/access_groups/$defs/principal": close({
		// Email of the Google Group.
		google_group?: string

		// Specifies the email of the producer service account.
		service_account?: string
	})
}
