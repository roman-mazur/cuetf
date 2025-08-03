package res

import "list"

#aws_batch_scheduling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_scheduling_policy")
	close({
		arn?: string
		fair_share_policy?: matchN(1, [#fair_share_policy, list.MaxItems(1) & [...#fair_share_policy]])
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#fair_share_policy: close({
		compute_reservation?: number
		share_decay_seconds?: number
		share_distribution?: matchN(1, [_#defs."/$defs/fair_share_policy/$defs/share_distribution", list.MaxItems(500) & [..._#defs."/$defs/fair_share_policy/$defs/share_distribution"]])
	})

	_#defs: "/$defs/fair_share_policy/$defs/share_distribution": close({
		share_identifier!: string
		weight_factor?:    number
	})
}
