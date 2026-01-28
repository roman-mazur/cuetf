package res

import "list"

#aws_cloudfront_monitoring_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_monitoring_subscription")
	close({
		monitoring_subscription!: matchN(1, [#monitoring_subscription, list.MaxItems(1) & [_, ...] & [...#monitoring_subscription]])
		distribution_id!: string
		id?:              string
	})

	#monitoring_subscription: close({
		realtime_metrics_subscription_config!: matchN(1, [_#defs."/$defs/monitoring_subscription/$defs/realtime_metrics_subscription_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_subscription/$defs/realtime_metrics_subscription_config"]])
	})

	_#defs: "/$defs/monitoring_subscription/$defs/realtime_metrics_subscription_config": close({
		realtime_metrics_subscription_status!: string
	})
}
