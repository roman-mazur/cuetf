package res

import "list"

#google_oracle_database_goldengate_connection_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_goldengate_connection_assignment")
	close({
		properties!: matchN(1, [#properties, list.MaxItems(1) & [_, ...] & [...#properties]])
		timeouts?: #timeouts

		// The time when the connection assignment was created.
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

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// The display name for the GoldengateConnectionAssignment.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The OCID of the entitlement linked to this resource.
		entitlement_id?: string

		// The ID of the GoldengateConnectionAssignment to create.
		goldengate_connection_assignment_id!: string
		id?:                                  string

		// The labels or tags associated with the
		// GoldengateConnectionAssignment.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the GoldengateConnectionAssignment
		// resource in the following
		// format:
		// projects/{project}/locations/{region}/goldengateConnectionAssignments/{goldengate_connection_assignment}
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// Credential store alias.
		alias?: string

		// The GoldengateConnection resource to be assigned.
		// Format:
		// projects/{project}/locations/{location}/goldengateConnections/{goldengate_connection}
		goldengate_connection!: string

		// The GoldenGateDeployment to assign the connection to.
		// Format:
		// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
		goldengate_deployment!: string

		// The
		// [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)
		// of the connection assignment being referenced.
		ocid?: string

		// The lifecycle state of the connection assignment.
		// Possible values:
		// CREATING
		// ACTIVE
		// FAILED
		// UPDATING
		// DELETING
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
