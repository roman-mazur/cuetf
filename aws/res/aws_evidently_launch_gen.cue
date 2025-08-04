package res

import "list"

#aws_evidently_launch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_evidently_launch")
	close({
		arn?:          string
		created_time?: string
		description?:  string
		execution?: [...close({
			ended_time?:   string
			started_time?: string
		})]
		id?:                string
		last_updated_time?: string
		name!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:  string
		project!: string
		groups?: matchN(1, [#groups, list.MaxItems(5) & [_, ...] & [...#groups]])
		randomization_salt?: string
		metric_monitors?: matchN(1, [#metric_monitors, list.MaxItems(3) & [...#metric_monitors]])
		status?:        string
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
		scheduled_splits_config?: matchN(1, [#scheduled_splits_config, list.MaxItems(1) & [...#scheduled_splits_config]])
		timeouts?: #timeouts
	})

	#groups: close({
		description?: string
		feature!:     string
		name!:        string
		variation!:   string
	})

	#metric_monitors: close({
		metric_definition?: matchN(1, [_#defs."/$defs/metric_monitors/$defs/metric_definition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/metric_monitors/$defs/metric_definition"]])
	})

	#scheduled_splits_config: close({
		steps?: matchN(1, [_#defs."/$defs/scheduled_splits_config/$defs/steps", list.MaxItems(6) & [_, ...] & [..._#defs."/$defs/scheduled_splits_config/$defs/steps"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/metric_monitors/$defs/metric_definition": close({
		entity_id_key!: string
		event_pattern?: string
		name!:          string
		unit_label?:    string
		value_key!:     string
	})

	_#defs: "/$defs/scheduled_splits_config/$defs/steps": close({
		segment_overrides?: matchN(1, [_#defs."/$defs/scheduled_splits_config/$defs/steps/$defs/segment_overrides", list.MaxItems(6) & [..._#defs."/$defs/scheduled_splits_config/$defs/steps/$defs/segment_overrides"]])
		group_weights!: [string]: number
		start_time!: string
	})

	_#defs: "/$defs/scheduled_splits_config/$defs/steps/$defs/segment_overrides": close({
		evaluation_order!: number
		segment!:          string
		weights!: [string]: number
	})
}
