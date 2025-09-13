package res

import "list"

#google_network_connectivity_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_connectivity_group")
	close({
		// Output only. The time the hub was created.
		create_time?: string

		// An optional description of the group.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the hub. Hub names must be unique. They use the
		// following form:
		// projects/{projectNumber}/locations/global/hubs/{hubId}
		hub!: string
		id?:  string

		// Optional labels in key:value format. For more information about
		// labels, see [Requirements for
		// labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the group. Group names must be unique. Possible
		// values: ["default", "center", "edge"]
		name!:    string
		project?: string

		// Output only. The name of the route table that corresponds to
		// this group. They use the following form:
		// 'projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}'
		route_table?: string
		auto_accept?: matchN(1, [#auto_accept, list.MaxItems(1) & [...#auto_accept]])
		timeouts?: #timeouts

		// Output only. The current lifecycle state of this hub.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The Google-generated UUID for the group. This
		// value is unique across all group resources. If a group is
		// deleted and another with the same name is created, the new
		// route table is assigned a different uniqueId.
		uid?: string

		// Output only. The time the hub was last updated.
		update_time?: string
	})

	#auto_accept: close({
		// A list of project ids or project numbers for which you want to
		// enable auto-accept. The auto-accept setting is applied to
		// spokes being created or updated in these projects.
		auto_accept_projects!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
