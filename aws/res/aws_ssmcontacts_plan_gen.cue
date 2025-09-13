package res

import "list"

#aws_ssmcontacts_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_plan")
	close({
		stage?: matchN(1, [#stage, [_, ...] & [...#stage]])
		contact_id!: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#stage: close({
		target?: matchN(1, [_#defs."/$defs/stage/$defs/target", [..._#defs."/$defs/stage/$defs/target"]])
		duration_in_minutes!: number
	})

	_#defs: "/$defs/stage/$defs/target": close({
		channel_target_info?: matchN(1, [_#defs."/$defs/stage/$defs/target/$defs/channel_target_info", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/target/$defs/channel_target_info"]])
		contact_target_info?: matchN(1, [_#defs."/$defs/stage/$defs/target/$defs/contact_target_info", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/target/$defs/contact_target_info"]])
	})

	_#defs: "/$defs/stage/$defs/target/$defs/channel_target_info": close({
		contact_channel_id!:        string
		retry_interval_in_minutes?: number
	})

	_#defs: "/$defs/stage/$defs/target/$defs/contact_target_info": close({
		contact_id?:   string
		is_essential!: bool
	})
}
