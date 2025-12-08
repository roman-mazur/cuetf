package data

#google_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_project")
	close({
		// Create the 'default' network automatically. Default true. If
		// set to false, the default network will be deleted. Note that,
		// for quota purposes, you will still need to have 1 network slot
		// available to create the project successfully, even if you set
		// auto_create_network to false, since the network will exist
		// momentarily.
		auto_create_network?: bool

		// The alphanumeric ID of the billing account this project belongs
		// to. The user or service account performing this operation with
		// Terraform must have Billing Account Administrator privileges
		// (roles/billing.admin) in the organization. See Google Cloud
		// Billing API Access Control for more details.
		billing_account?: string

		// The deletion policy for the Project. Setting PREVENT will
		// protect the project against any destroy actions caused by a
		// terraform apply or terraform destroy. Setting ABANDON allows
		// the resource
		// to be abandoned rather than deleted. Possible values are:
		// "PREVENT", "ABANDON", "DELETE"
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The numeric ID of the folder this project should be created
		// under. Only one of org_id or folder_id may be specified. If
		// the folder_id is specified, then the project is created under
		// the specified folder. Changing this forces the project to be
		// migrated to the newly specified folder.
		folder_id?: string

		// A set of key/value label pairs to assign to the project.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The display name of the project.
		name?: string
		id?:   string

		// The numeric identifier of the project.
		number?: string

		// The numeric ID of the organization this project belongs to.
		// Changing this forces a new project to be created. Only one of
		// org_id or folder_id may be specified. If the org_id is
		// specified then the project is created at the top level.
		// Changing this forces the project to be migrated to the newly
		// specified organization.
		org_id?: string

		// The project ID. Changing this forces a new project to be
		// created.
		project_id?: string

		// A map of resource manager tags. Resource manager tag keys and
		// values have the same definition as resource manager tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format tagValues/456. The field is ignored when empty.
		// This field is only set at create time and modifying this field
		// after creation will trigger recreation. To apply tags to an
		// existing resource, see the google_tags_tag_value resource.
		tags?: [string]: string

		// (ReadOnly) The combination of labels configured directly on the
		// resource and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
