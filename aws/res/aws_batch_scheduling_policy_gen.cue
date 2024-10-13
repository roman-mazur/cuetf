package res

import "list"

#aws_batch_scheduling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_scheduling_policy")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	fair_share_policy?: #fair_share_policy | list.MaxItems(1) & [...#fair_share_policy]

	#fair_share_policy: {
		compute_reservation?: number
		share_decay_seconds?: number
		share_distribution?: #fair_share_policy.#share_distribution | list.MaxItems(500) & [...#fair_share_policy.#share_distribution]

		#share_distribution: {
			share_identifier!: string
			weight_factor?:    number
		}
	}
}
