package data

#cloudflare_zero_trust_gateway_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_policy")
	close({
		// Specify the action to perform when the associated traffic,
		// identity, and device posture expressions either absent or
		// evaluate to `true`.
		// Available values: "on", "off", "allow", "block", "scan",
		// "noscan", "safesearch", "ytrestricted", "isolate",
		// "noisolate", "override", "l4_override", "egress", "resolve",
		// "quarantine", "redirect".
		action?: string

		// Indicate the date of deletion, if any.
		deleted_at?: string

		// Specify the rule description.
		description?: string
		account_id!:  string

		// Specify the wirefilter expression used for device posture
		// check. The API automatically formats and sanitizes expressions
		// before storing them. To prevent Terraform state drift, use the
		// formatted expression returned in the API response.
		device_posture?: string

		// Specify whether the rule is enabled.
		enabled?:    bool
		created_at?: string

		// Defines the expiration time stamp and default duration of a DNS
		// policy. Takes precedence over the policy's `schedule`
		// configuration, if any. This does not apply to HTTP or network
		// policies. Settable only for `dns` rules.
		expiration?: close({
			// Defines the default duration a policy active in minutes. Must
			// set in order to use the `reset_expiration` endpoint on this
			// rule.
			duration?: number

			// Indicates whether the policy is expired.
			expired?: bool

			// Show the timestamp when the policy expires and stops applying.
			// The value must follow RFC 3339 and include a UTC offset. The
			// system accepts non-zero offsets but converts them to the
			// equivalent UTC+00:00 value and returns timestamps with a
			// trailing Z. Expiration policies ignore client timezones and
			// expire globally at the specified expires_at time.
			expires_at?: string
		})

		// Specify the protocol or layer to evaluate the traffic,
		// identity, and device posture expressions.
		filters?: [...string]

		// Identify the API resource with a UUID.
		id?: string

		// Specify the wirefilter expression used for identity matching.
		// The API automatically formats and sanitizes expressions before
		// storing them. To prevent Terraform state drift, use the
		// formatted expression returned in the API response.
		identity?: string

		// Specify the rule name.
		name?: string

		// Set the order of your rules. Lower values indicate higher
		// precedence. At each processing phase, evaluate applicable
		// rules in ascending order of this value. Refer to [Order of
		// enforcement](http://developers.cloudflare.com/learning-paths/secure-internet-traffic/understand-policies/order-of-enforcement/#manage-precedence-with-terraform)
		// to manage precedence via Terraform.
		precedence?: number

		// Set settings related to this rule. Each setting is only valid
		// for specific rule types and can only be used with the
		// appropriate selectors. If Terraform drift is observed in these
		// setting values, verify that the setting is supported for the
		// given rule type and that the API response reflects the
		// requested value. If the API response returns sanitized or
		// modified values that differ from the request, use the
		// API-provided values in Terraform to ensure consistency.
		rule_settings?: close({
			// Add custom headers to allowed requests as key-value pairs. Use
			// header names as keys that map to arrays of header values.
			// Settable only for `http` rules with the action set to `allow`.
			add_headers?: [string]: [...string]

			// Define the settings for the Audit SSH action. Settable only for
			// `l4` rules with `audit_ssh` action.
			audit_ssh?: close({
				// Enable SSH command logging.
				command_logging?: bool
			})

			// Set to enable MSP children to bypass this rule. Only parent MSP
			// accounts can set this. this rule. Settable for all types of
			// rules.
			allow_child_bypass?: bool

			// Configure browser isolation behavior. Settable only for `http`
			// rules with the action set to `isolate`.
			biso_admin_controls?: close({
				// Configure copy behavior. If set to remote_only, users cannot
				// copy isolated content from the remote browser to the local
				// clipboard. If this field is absent, copying remains enabled.
				// Applies only when version == "v2".
				// Available values: "enabled", "disabled", "remote_only".
				copy?: string

				// Set to false to enable copy-pasting. Only applies when `version
				// == "v1"`.
				dcp?: bool

				// Set to false to enable downloading. Only applies when `version
				// == "v1"`.
				dd?: bool

				// Set to false to enable keyboard usage. Only applies when
				// `version == "v1"`.
				dk?: bool

				// Configure download behavior. When set to remote_only, users can
				// view downloads but cannot save them. Applies only when version
				// == "v2".
				// Available values: "enabled", "disabled", "remote_only".
				download?: string

				// Set to false to enable printing. Only applies when `version ==
				// "v1"`.
				dp?: bool

				// Set to false to enable uploading. Only applies when `version ==
				// "v1"`.
				du?: bool

				// Configure keyboard usage behavior. If this field is absent,
				// keyboard usage remains enabled. Applies only when version ==
				// "v2".
				// Available values: "enabled", "disabled".
				keyboard?: string

				// Configure paste behavior. If set to remote_only, users cannot
				// paste content from the local clipboard into isolated pages. If
				// this field is absent, pasting remains enabled. Applies only
				// when version == "v2".
				// Available values: "enabled", "disabled", "remote_only".
				paste?: string

				// Configure print behavior. Default, Printing is enabled. Applies
				// only when version == "v2".
				// Available values: "enabled", "disabled".
				printing?: string

				// Configure upload behavior. If this field is absent, uploading
				// remains enabled. Applies only when version == "v2".
				// Available values: "enabled", "disabled".
				upload?: string

				// Indicate which version of the browser isolation controls should
				// apply.
				// Available values: "v1", "v2".
				version?: string
			})

			// Configure custom block page settings. If missing or null, use
			// the account settings. Settable only for `http` rules with the
			// action set to `block`.
			block_page?: close({
				// Specify whether to pass the context information as query
				// parameters.
				include_context?: bool

				// Specify the URI to which the user is redirected.
				target_uri?: string
			})

			// Configure session check behavior. Settable only for `l4` and
			// `http` rules with the action set to `allow`.
			check_session?: close({
				// Sets the required session freshness threshold. The API returns
				// a normalized version of this value.
				duration?: string

				// Enable session enforcement.
				enforce?: bool
			})

			// Enable the custom block page. Settable only for `dns` rules
			// with action `block`.
			block_page_enabled?: bool

			// Configure custom resolvers to route queries that match the
			// resolver policy. Unused with 'resolve_dns_through_cloudflare'
			// or 'resolve_dns_internally' settings. DNS queries get routed
			// to the address closest to their origin. Only valid when a
			// rule's action set to 'resolve'. Settable only for
			// `dns_resolver` rules.
			dns_resolvers?: close({
				ipv4?: matchN(1, [close({
					// Specify the IPv4 address of the upstream resolver.
					ip?: string

					// Specify a port number to use for the upstream resolver.
					// Defaults to 53 if unspecified.
					port?: number

					// Indicate whether to connect to this resolver over a private
					// network. Must set when vnet_id set.
					route_through_private_network?: bool

					// Specify an optional virtual network for this resolver. Uses
					// default virtual network id if omitted.
					vnet_id?: string
				}), [...close({
					// Specify the IPv4 address of the upstream resolver.
					ip?: string

					// Specify a port number to use for the upstream resolver.
					// Defaults to 53 if unspecified.
					port?: number

					// Indicate whether to connect to this resolver over a private
					// network. Must set when vnet_id set.
					route_through_private_network?: bool

					// Specify an optional virtual network for this resolver. Uses
					// default virtual network id if omitted.
					vnet_id?: string
				})]])
				ipv6?: matchN(1, [close({
					// Specify the IPv6 address of the upstream resolver.
					ip?: string

					// Specify a port number to use for the upstream resolver.
					// Defaults to 53 if unspecified.
					port?: number

					// Indicate whether to connect to this resolver over a private
					// network. Must set when vnet_id set.
					route_through_private_network?: bool

					// Specify an optional virtual network for this resolver. Uses
					// default virtual network id if omitted.
					vnet_id?: string
				}), [...close({
					// Specify the IPv6 address of the upstream resolver.
					ip?: string

					// Specify a port number to use for the upstream resolver.
					// Defaults to 53 if unspecified.
					port?: number

					// Indicate whether to connect to this resolver over a private
					// network. Must set when vnet_id set.
					route_through_private_network?: bool

					// Specify an optional virtual network for this resolver. Uses
					// default virtual network id if omitted.
					vnet_id?: string
				})]])
			})

			// Explain why the rule blocks the request. The custom block page
			// shows this text (if enabled). Settable only for `dns`, `l4`,
			// and `http` rules when the action set to `block`.
			block_reason?: string

			// Configure how Gateway Proxy traffic egresses. You can enable
			// this setting for rules with Egress actions and filters, or
			// omit it to indicate local egress via WARP IPs. Settable only
			// for `egress` rules.
			egress?: close({
				// Specify the IPv4 address to use for egress.
				ipv4?: string

				// Specify the fallback IPv4 address to use for egress when the
				// primary IPv4 fails. Set '0.0.0.0' to indicate local egress via
				// WARP IPs.
				ipv4_fallback?: string

				// Specify the IPv6 range to use for egress.
				ipv6?: string
			})

			// Set to enable MSP accounts to bypass their parent's rules. Only
			// MSP child accounts can set this. Settable for all types of
			// rules.
			bypass_parent_rule?: bool

			// Send matching traffic to the supplied destination IP address
			// and port. Settable only for `l4` rules with the action set to
			// `l4_override`.
			l4override?: close({
				// Defines the IPv4 or IPv6 address.
				ip?: string

				// Defines a port number to use for TCP/UDP overrides.
				port?: number
			})

			// Ignore category matches at CNAME domains in a response. When
			// off, evaluate categories in this rule against all CNAME domain
			// categories in the response. Settable only for `dns` and
			// `dns_resolver` rules.
			ignore_cname_category_matches?: bool

			// Specify whether to disable DNSSEC validation (for Allow
			// actions) [INSECURE]. Settable only for `dns` rules.
			insecure_disable_dnssec_validation?: bool

			// Enable IPs in DNS resolver category blocks. The system blocks
			// only domain name categories unless you enable this setting.
			// Settable only for `dns` and `dns_resolver` rules.
			ip_categories?: bool

			// Indicates whether to include IPs in DNS resolver indicator feed
			// blocks. Default, indicator feeds block only domain names.
			// Settable only for `dns` and `dns_resolver` rules.
			ip_indicator_feeds?: bool

			// Configure a notification to display on the user's device when
			// this rule matched. Settable for all types of rules with the
			// action set to `block`.
			notification_settings?: close({
				// Enable notification.
				enabled?: bool

				// Indicates whether to pass the context information as query
				// parameters.
				include_context?: bool

				// Customize the message shown in the notification.
				msg?: string

				// Defines an optional URL to direct users to additional
				// information. If unset, the notification opens a block page.
				support_url?: string
			})

			// Configure DLP payload logging. Settable only for `http` rules.
			payload_log?: close({
				// Enable DLP payload logging for this rule.
				enabled?: bool
			})

			// Defines a hostname for override, for the matching DNS queries.
			// Settable only for `dns` rules with the action set to
			// `override`.
			override_host?: string

			// Configure settings that apply to quarantine rules. Settable
			// only for `http` rules.
			quarantine?: close({
				// Specify the types of files to sandbox.
				file_types?: [...string]
			})

			// Defines a an IP or set of IPs for overriding matched DNS
			// queries. Settable only for `dns` rules with the action set to
			// `override`.
			override_ips?: [...string]

			// Enable to send queries that match the policy to Cloudflare's
			// default 1.1.1.1 DNS resolver. Cannot set when 'dns_resolvers'
			// specified or 'resolve_dns_internally' is set. Only valid when
			// a rule's action set to 'resolve'. Settable only for
			// `dns_resolver` rules.
			resolve_dns_through_cloudflare?: bool

			// Apply settings to redirect rules. Settable only for `http`
			// rules with the action set to `redirect`.
			redirect?: close({
				// Specify whether to pass the context information as query
				// parameters.
				include_context?: bool

				// Specify whether to append the path and query parameters from
				// the original request to target_uri.
				preserve_path_and_query?: bool

				// Specify the URI to which the user is redirected.
				target_uri?: string
			})

			// Configure to forward the query to the internal DNS service,
			// passing the specified 'view_id' as input. Not used when
			// 'dns_resolvers' is specified or
			// 'resolve_dns_through_cloudflare' is set. Only valid when a
			// rule's action set to 'resolve'. Settable only for
			// `dns_resolver` rules.
			resolve_dns_internally?: close({
				// Specify the fallback behavior to apply when the internal DNS
				// response code differs from 'NOERROR' or when the response data
				// contains only CNAME records for 'A' or 'AAAA' queries.
				// Available values: "none", "public_dns".
				fallback?: string

				// Specify the internal DNS view identifier to pass to the
				// internal DNS service.
				view_id?: string
			})

			// Configure behavior when an upstream certificate is invalid or
			// an SSL error occurs. Settable only for `http` rules with the
			// action set to `allow`.
			untrusted_cert?: close({
				// Defines the action performed when an untrusted certificate
				// seen. The default action an error with HTTP code 526.
				// Available values: "pass_through", "block", "error".
				action?: string
			})
		})

		// Indicate that this rule is shared via the Orgs API and read
		// only.
		read_only?: bool

		// Identify the API resource with a UUID.
		rule_id?: string

		// Defines the schedule for activating DNS policies. Settable only
		// for `dns` and `dns_resolver` rules.
		schedule?: close({
			// Specify the time intervals when the rule is active on Fridays,
			// in the increasing order from 00:00-24:00. If this parameter
			// omitted, the rule is deactivated on Fridays. API returns a
			// formatted version of this string, which may cause Terraform
			// drift if a unformatted value is used.
			fri?: string

			// Specify the time intervals when the rule is active on Mondays,
			// in the increasing order from 00:00-24:00(capped at maximum of
			// 6 time splits). If this parameter omitted, the rule is
			// deactivated on Mondays. API returns a formatted version of
			// this string, which may cause Terraform drift if a unformatted
			// value is used.
			mon?: string

			// Specify the time intervals when the rule is active on
			// Saturdays, in the increasing order from 00:00-24:00. If this
			// parameter omitted, the rule is deactivated on Saturdays. API
			// returns a formatted version of this string, which may cause
			// Terraform drift if a unformatted value is used.
			sat?: string

			// Specify the time intervals when the rule is active on Sundays,
			// in the increasing order from 00:00-24:00. If this parameter
			// omitted, the rule is deactivated on Sundays. API returns a
			// formatted version of this string, which may cause Terraform
			// drift if a unformatted value is used.
			sun?: string

			// Specify the time intervals when the rule is active on
			// Thursdays, in the increasing order from 00:00-24:00. If this
			// parameter omitted, the rule is deactivated on Thursdays. API
			// returns a formatted version of this string, which may cause
			// Terraform drift if a unformatted value is used.
			thu?: string

			// Specify the time zone for rule evaluation. When a [valid time
			// zone city
			// name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
			// is provided, Gateway always uses the current time for that
			// time zone. When this parameter is omitted, Gateway uses the
			// time zone determined from the user's IP address. Colo time
			// zone is used when the user's IP address does not resolve to a
			// location.
			time_zone?: string

			// Specify the time intervals when the rule is active on Tuesdays,
			// in the increasing order from 00:00-24:00. If this parameter
			// omitted, the rule is deactivated on Tuesdays. API returns a
			// formatted version of this string, which may cause Terraform
			// drift if a unformatted value is used.
			tue?: string

			// Specify the time intervals when the rule is active on
			// Wednesdays, in the increasing order from 00:00-24:00. If this
			// parameter omitted, the rule is deactivated on Wednesdays. API
			// returns a formatted version of this string, which may cause
			// Terraform drift if a unformatted value is used.
			wed?: string
		})

		// Indicate that this rule is sharable via the Orgs API.
		sharable?: bool

		// Provide the account tag of the account that created the rule.
		source_account?: string

		// Specify the wirefilter expression used for traffic matching.
		// The API automatically formats and sanitizes expressions before
		// storing them. To prevent Terraform state drift, use the
		// formatted expression returned in the API response.
		traffic?:    string
		updated_at?: string

		// Indicate the version number of the rule(read-only).
		version?: number

		// Indicate a warning for a misconfigured rule, if any.
		warning_status?: string
	})
}
