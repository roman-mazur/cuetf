package res

aws_pinpointsmsvoicev2_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpointsmsvoicev2_pool")
	close({
		timeouts?: #timeouts
		arn?:      string

		// Whether deletion protection is enabled. When `true`, the pool cannot be deleted.
		deletion_protection_enabled?: bool

		// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region
		// of the pool. This field is optional for origination identity types that are
		// not country-specific.
		iso_country_code?: string
		id?:               string

		// Type of message.
		message_type!: string

		// Name of the opt-out list to associate with the pool. Inherited from the
		// initial origination identity when omitted.
		opt_out_list_name?: string

		// Set of origination identity ARNs to associate with the pool. At least one
		// origination identity is required at creation.
		origination_identities!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Whether the pool relies on self-managed opt-out handling. When `false`, AWS
		// auto-replies to HELP/STOP requests and manages the opt-out list. Inherited
		// from the initial origination identity when omitted.
		self_managed_opt_outs_enabled?: bool

		// Whether shared routes are enabled for the pool. When `true`, messages may use
		// shared phone numbers or sender IDs in countries that allow it.
		shared_routes_enabled?: bool

		// ARN of the two-way channel that receives inbound messages.
		two_way_channel_arn?: string

		// ARN of the IAM role that End User Messaging SMS assumes to publish inbound
		// messages to the two-way channel.
		two_way_channel_role?: string
		tags?: [string]: string

		// Whether inbound message reception is enabled for the pool.
		two_way_enabled?: bool
		tags_all?: [string]: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
