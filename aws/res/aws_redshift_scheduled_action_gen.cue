package res

import "list"

#aws_redshift_scheduled_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_scheduled_action")
	description?: string
	enable?:      bool
	end_time?:    string
	iam_role!:    string
	id?:          string
	name!:        string
	schedule!:    string
	start_time?:  string
	target_action?: #target_action | list.MaxItems(1) & [_, ...] & [...#target_action]

	#target_action: {
		pause_cluster?: #target_action.#pause_cluster | list.MaxItems(1) & [...#target_action.#pause_cluster]
		resize_cluster?: #target_action.#resize_cluster | list.MaxItems(1) & [...#target_action.#resize_cluster]
		resume_cluster?: #target_action.#resume_cluster | list.MaxItems(1) & [...#target_action.#resume_cluster]

		#pause_cluster: cluster_identifier!: string

		#resize_cluster: {
			classic?:            bool
			cluster_identifier!: string
			cluster_type?:       string
			node_type?:          string
			number_of_nodes?:    number
		}

		#resume_cluster: cluster_identifier!: string
	}
}
