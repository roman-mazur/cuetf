package res

import "list"

#aws_cloudfront_monitoring_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_monitoring_subscription")
	distribution_id!: string
	id?:              string
	monitoring_subscription?: #monitoring_subscription | list.MaxItems(1) & [_, ...] & [...#monitoring_subscription]

	#monitoring_subscription: {
		realtime_metrics_subscription_config?: #monitoring_subscription.#realtime_metrics_subscription_config | list.MaxItems(1) & [_, ...] & [...#monitoring_subscription.#realtime_metrics_subscription_config]

		#realtime_metrics_subscription_config: realtime_metrics_subscription_status!: string
	}
}
