package res

import "list"

#google_healthcare_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_workspace")
	close({
		// Identifies the dataset addressed by this request. Must be in
		// the format
		// 'projects/{project}/locations/{location}/datasets/{dataset}'
		dataset!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The user labels. An object containing a list of "key": value
		// pairs. Example: { "name": "wrench", "mass": "1.3kg", "count":
		// "3" }
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		settings?: matchN(1, [#settings, list.MaxItems(1) & [_, ...] & [...#settings]])

		// The name of the workspace, in the format
		// 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		timeouts?: #timeouts
	})

	#settings: close({
		// Project IDs for data projects hosted in a workspace.
		data_project_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
