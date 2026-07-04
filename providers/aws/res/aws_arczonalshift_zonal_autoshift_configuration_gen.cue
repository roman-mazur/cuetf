package res

#aws_arczonalshift_zonal_autoshift_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_arczonalshift_zonal_autoshift_configuration")
	close({
		blocking_alarms?: matchN(1, [#blocking_alarms, [...#blocking_alarms]])
		outcome_alarms?: matchN(1, [#outcome_alarms, [...#outcome_alarms]])

		// List of time windows during which practice runs are allowed, in the format
		// `Day:HH:MM-Day:HH:MM` (e.g., `Mon:09:00-Mon:17:00`). Cannot be used together
		// with `blocked_windows`.
		allowed_windows?: [...string]

		// List of dates when practice runs should not be started, in the format `YYYY-MM-DD`.
		blocked_dates?: [...string]

		// List of time windows during which practice runs should not be started, in the
		// format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:00:00-Mon:08:00`). Cannot be used
		// together with `allowed_windows`.
		blocked_windows?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The ARN of the managed resource to configure zonal autoshift for (e.g., an
		// Application Load Balancer). Changing this creates a new resource.
		resource_arn!: string

		// The status of zonal autoshift. Valid values: `ENABLED`, `DISABLED`.
		zonal_autoshift_status!: string
	})

	#blocking_alarms: close({
		// ARN of the CloudWatch alarm.
		alarm_identifier!: string

		// Type of control condition. Valid value: `CLOUDWATCH`.
		type!: string
	})

	#outcome_alarms: close({
		// ARN of the CloudWatch alarm.
		alarm_identifier!: string

		// Type of control condition. Valid value: `CLOUDWATCH`.
		type!: string
	})
}
