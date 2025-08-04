package res

import "list"

#aws_redshift_scheduled_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_scheduled_action")
	close({
		description?: string
		enable?:      bool
		end_time?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		iam_role!:   string
		id?:         string
		name!:       string
		schedule!:   string
		start_time?: string
		target_action?: matchN(1, [#target_action, list.MaxItems(1) & [_, ...] & [...#target_action]])
	})

	#target_action: close({
		pause_cluster?: matchN(1, [_#defs."/$defs/target_action/$defs/pause_cluster", list.MaxItems(1) & [..._#defs."/$defs/target_action/$defs/pause_cluster"]])
		resize_cluster?: matchN(1, [_#defs."/$defs/target_action/$defs/resize_cluster", list.MaxItems(1) & [..._#defs."/$defs/target_action/$defs/resize_cluster"]])
		resume_cluster?: matchN(1, [_#defs."/$defs/target_action/$defs/resume_cluster", list.MaxItems(1) & [..._#defs."/$defs/target_action/$defs/resume_cluster"]])
	})

	_#defs: "/$defs/target_action/$defs/pause_cluster": close({
		cluster_identifier!: string
	})

	_#defs: "/$defs/target_action/$defs/resize_cluster": close({
		classic?:            bool
		cluster_identifier!: string
		cluster_type?:       string
		node_type?:          string
		number_of_nodes?:    number
	})

	_#defs: "/$defs/target_action/$defs/resume_cluster": close({
		cluster_identifier!: string
	})
}
