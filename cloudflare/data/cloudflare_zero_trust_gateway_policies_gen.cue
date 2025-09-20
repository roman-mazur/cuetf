package data

#cloudflare_zero_trust_gateway_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_policies")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The action to perform when the associated traffic, identity,
			// and device posture expressions are either absent or evaluate
			// to `true`.
			// Available values: "on", "off", "allow", "block", "scan",
			// "noscan", "safesearch", "ytrestricted", "isolate",
			// "noisolate", "override", "l4_override", "egress", "resolve",
			// "quarantine", "redirect".
			action?:     string
			created_at?: string

			// Date of deletion, if any.
			deleted_at?: string

			// The description of the rule.
			description?: string

			// The wirefilter expression used for device posture check
			// matching. The API automatically formats and sanitizes this
			// expression. This returns a normalized version that may differ
			// from your input and cause Terraform state drift.
			device_posture?: string

			// True if the rule is enabled.
			enabled?: bool

			// The protocol or layer to evaluate the traffic, identity, and
			// device. posture expressions.
			filters?: [...string]

			// The expiration time stamp and default duration of a DNS policy.
			// Takes
			// precedence over the policy's `schedule` configuration, if any.
			//
			// This does not apply to HTTP or network policies.
			expiration?: close({
				// The default duration a policy will be active in minutes. Must
				// be set in order to use the `reset_expiration` endpoint on this
				// rule.
				duration?: number

				// Whether the policy has expired.
				expired?: bool

				// The time stamp at which the policy will expire and cease to be
				// applied.
				//
				// Must adhere to RFC 3339 and include a UTC offset. Non-zero
				// offsets are accepted but will be converted to the equivalent
				// value with offset zero (UTC+00:00) and will be returned as time
				// stamps with offset zero denoted by a trailing 'Z'.
				//
				// Policies with an expiration do not consider the timezone of
				// clients they are applied to, and expire "globally" at the point
				// given by their `expires_at` value.
				expires_at?: string
			})

			// Additional settings that modify the rule's action.
			rule_settings?: close({
				// Add custom headers to allowed requests, in the form of
				// key-value pairs. Keys are header names, pointing to an array
				// with its header value(s).
				add_headers?: [string]: [...string]

				// Settings for the Audit SSH action.
				audit_ssh?: close({
					// Enable to turn on SSH command logging.
					command_logging?: bool
				})

				// Set by parent MSP accounts to enable their children to bypass
				// this rule.
				allow_child_bypass?: bool

				// Configure how browser isolation behaves.
				biso_admin_controls?: close({
					// Configure whether copy is enabled or not. When set with
					// "remote_only", copying isolated content from the remote
					// browser to the user's local clipboard is disabled. When
					// absent, copy is enabled. Only applies when `version == "v2"`.
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

					// Configure whether downloading enabled or not. When set with
					// "remote_only", downloads are only available for viewing. Only
					// applies when `version == "v2"`.
					// Available values: "enabled", "disabled", "remote_only".
					download?: string

					// Set to false to enable printing. Only applies when `version ==
					// "v1"`.
					dp?: bool

					// Set to false to enable uploading. Only applies when `version ==
					// "v1"`.
					du?: bool

					// Configure whether keyboard usage is enabled or not. When
					// absent, keyboard usage is enabled. Only applies when `version
					// == "v2"`.
					// Available values: "enabled", "disabled".
					keyboard?: string

					// Configure whether pasting is enabled or not. When set with
					// "remote_only", pasting content from the user's local clipboard
					// into isolated pages is disabled. When absent, paste is
					// enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled", "remote_only".
					paste?: string

					// Configure whether printing is enabled or not. When absent,
					// printing is enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled".
					printing?: string

					// Configure whether uploading is enabled or not. When absent,
					// uploading is enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled".
					upload?: string

					// Indicates which version of the browser isolation controls
					// should apply.
					// Available values: "v1", "v2".
					version?: string
				})

				// Custom block page settings. If missing/null, blocking will use
				// the the account settings.
				block_page?: close({
					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// URI to which the user will be redirected.
					target_uri?: string
				})

				// Configure how session check behaves.
				check_session?: close({
					// Configure how fresh the session needs to be to be considered
					// valid. The API automatically formats and sanitizes this
					// expression. This returns a normalized version that may differ
					// from your input and cause Terraform state drift.
					duration?: string

					// Set to true to enable session enforcement.
					enforce?: bool
				})

				// Enable the custom block page.
				block_page_enabled?: bool

				// Add your own custom resolvers to route queries that match the
				// resolver policy. Cannot be used when
				// 'resolve_dns_through_cloudflare' or 'resolve_dns_internally'
				// are set. DNS queries will route to the address closest to
				// their origin. Only valid when a rule's action is set to
				// 'resolve'.
				dns_resolvers?: close({
					ipv4?: matchN(1, [close({
						// IPv4 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					}), [...close({
						// IPv4 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					})]])
					ipv6?: matchN(1, [close({
						// IPv6 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					}), [...close({
						// IPv6 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					})]])
				})

				// The text describing why this block occurred, displayed on the
				// custom block page (if enabled).
				block_reason?: string

				// Configure how Gateway Proxy traffic egresses. You can enable
				// this setting for rules with Egress actions and filters, or
				// omit it to indicate local egress via WARP IPs.
				egress?: close({
					// The IPv4 address to be used for egress.
					ipv4?: string

					// The fallback IPv4 address to be used for egress in the event of
					// an error egressing with the primary IPv4. Can be '0.0.0.0' to
					// indicate local egress via WARP IPs.
					ipv4_fallback?: string

					// The IPv6 range to be used for egress.
					ipv6?: string
				})

				// Set by children MSP accounts to bypass their parent's rules.
				bypass_parent_rule?: bool

				// Send matching traffic to the supplied destination IP address.
				// and port.
				l4override?: close({
					// IPv4 or IPv6 address.
					ip?: string

					// A port number to use for TCP/UDP overrides.
					port?: number
				})

				// Set to true, to ignore the category matches at CNAME domains in
				// a response. If unchecked, the categories in this rule will be
				// checked against all the CNAME domain categories in a response.
				ignore_cname_category_matches?: bool

				// INSECURE - disable DNSSEC validation (for Allow actions).
				insecure_disable_dnssec_validation?: bool

				// Set to true to enable IPs in DNS resolver category blocks. By
				// default categories only block based on domain names.
				ip_categories?: bool

				// Set to true to include IPs in DNS resolver indicator feed
				// blocks. By default indicator feeds only block based on domain
				// names.
				ip_indicator_feeds?: bool

				// Configure a notification to display on the user's device when
				// this rule is matched.
				notification_settings?: close({
					// Set notification on.
					enabled?: bool

					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// Customize the message shown in the notification.
					msg?: string

					// Optional URL to direct users to additional information. If not
					// set, the notification will open a block page.
					support_url?: string
				})

				// Configure DLP payload logging.
				payload_log?: close({
					// Set to true to enable DLP payload logging for this rule.
					enabled?: bool
				})

				// Override matching DNS queries with a hostname.
				override_host?: string

				// Settings that apply to quarantine rules.
				quarantine?: close({
					// Types of files to sandbox.
					file_types?: [...string]
				})

				// Override matching DNS queries with an IP or set of IPs.
				override_ips?: [...string]

				// Enable to send queries that match the policy to Cloudflare's
				// default 1.1.1.1 DNS resolver. Cannot be set when
				// 'dns_resolvers' are specified or 'resolve_dns_internally' is
				// set. Only valid when a rule's action is set to 'resolve'.
				resolve_dns_through_cloudflare?: bool

				// Settings that apply to redirect rules.
				redirect?: close({
					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// If true, the path and query parameters from the original
					// request will be appended to target_uri.
					preserve_path_and_query?: bool

					// URI to which the user will be redirected.
					target_uri?: string
				})

				// Configure to forward the query to the internal DNS service,
				// passing the specified 'view_id' as input. Cannot be set when
				// 'dns_resolvers' are specified or
				// 'resolve_dns_through_cloudflare' is set. Only valid when a
				// rule's action is set to 'resolve'.
				resolve_dns_internally?: close({
					// The fallback behavior to apply when the internal DNS response
					// code is different from 'NOERROR' or when the response data
					// only contains CNAME records for 'A' or 'AAAA' queries.
					// Available values: "none", "public_dns".
					fallback?: string

					// The internal DNS view identifier that's passed to the internal
					// DNS service.
					view_id?: string
				})

				// Configure behavior when an upstream cert is invalid or an SSL
				// error occurs.
				untrusted_cert?: close({
					// The action performed when an untrusted certificate is seen. The
					// default action is an error with HTTP code 526.
					// Available values: "pass_through", "block", "error".
					action?: string
				})
			})

			// The API resource UUID.
			id?: string

			// The wirefilter expression used for identity matching. The API
			// automatically formats and sanitizes this expression. This
			// returns a normalized version that may differ from your input
			// and cause Terraform state drift.
			identity?: string

			// The name of the rule.
			name?: string

			// The rule cannot be shared via the Orgs API.
			not_sharable?: bool

			// Precedence sets the order of your rules. Lower values indicate
			// higher precedence. At each processing phase, applicable rules
			// are evaluated in ascending order of this value. Refer to
			// [Order of
			// enforcement](http://developers.cloudflare.com/learning-paths/secure-internet-traffic/understand-policies/order-of-enforcement/#manage-precedence-with-terraform)
			// docs on how to manage precedence via Terraform.
			precedence?: number

			// The rule was shared via the Orgs API and cannot be edited by
			// the current account.
			read_only?: bool

			// account tag of account that created the rule.
			source_account?: string

			// The schedule for activating DNS policies. This does not apply
			// to HTTP or network policies.
			schedule?: close({
				// The time intervals when the rule will be active on Fridays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Fridays.
				fri?: string

				// The time intervals when the rule will be active on Mondays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Mondays.
				mon?: string

				// The time intervals when the rule will be active on Saturdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Saturdays.
				sat?: string

				// The time intervals when the rule will be active on Sundays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Sundays.
				sun?: string

				// The time intervals when the rule will be active on Thursdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Thursdays.
				thu?: string

				// The time zone the rule will be evaluated against. If a [valid
				// time zone city
				// name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
				// is provided, Gateway will always use the current time at that
				// time zone. If this parameter is omitted, then Gateway will use
				// the time zone inferred from the user's source IP to evaluate
				// the rule. If Gateway cannot determine the time zone from the
				// IP, we will fall back to the time zone of the user's connected
				// data center.
				time_zone?: string

				// The time intervals when the rule will be active on Tuesdays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Tuesdays.
				tue?: string

				// The time intervals when the rule will be active on Wednesdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Wednesdays.
				wed?: string
			})

			// The wirefilter expression used for traffic matching. The API
			// automatically formats and sanitizes this expression. This
			// returns a normalized version that may differ from your input
			// and cause Terraform state drift.
			traffic?:    string
			updated_at?: string

			// version number of the rule.
			version?: number

			// Warning for a misconfigured rule, if any.
			warning_status?: string
		}), [...close({
			// The action to perform when the associated traffic, identity,
			// and device posture expressions are either absent or evaluate
			// to `true`.
			// Available values: "on", "off", "allow", "block", "scan",
			// "noscan", "safesearch", "ytrestricted", "isolate",
			// "noisolate", "override", "l4_override", "egress", "resolve",
			// "quarantine", "redirect".
			action?:     string
			created_at?: string

			// Date of deletion, if any.
			deleted_at?: string

			// The description of the rule.
			description?: string

			// The wirefilter expression used for device posture check
			// matching. The API automatically formats and sanitizes this
			// expression. This returns a normalized version that may differ
			// from your input and cause Terraform state drift.
			device_posture?: string

			// True if the rule is enabled.
			enabled?: bool

			// The protocol or layer to evaluate the traffic, identity, and
			// device. posture expressions.
			filters?: [...string]

			// The expiration time stamp and default duration of a DNS policy.
			// Takes
			// precedence over the policy's `schedule` configuration, if any.
			//
			// This does not apply to HTTP or network policies.
			expiration?: close({
				// The default duration a policy will be active in minutes. Must
				// be set in order to use the `reset_expiration` endpoint on this
				// rule.
				duration?: number

				// Whether the policy has expired.
				expired?: bool

				// The time stamp at which the policy will expire and cease to be
				// applied.
				//
				// Must adhere to RFC 3339 and include a UTC offset. Non-zero
				// offsets are accepted but will be converted to the equivalent
				// value with offset zero (UTC+00:00) and will be returned as time
				// stamps with offset zero denoted by a trailing 'Z'.
				//
				// Policies with an expiration do not consider the timezone of
				// clients they are applied to, and expire "globally" at the point
				// given by their `expires_at` value.
				expires_at?: string
			})

			// Additional settings that modify the rule's action.
			rule_settings?: close({
				// Add custom headers to allowed requests, in the form of
				// key-value pairs. Keys are header names, pointing to an array
				// with its header value(s).
				add_headers?: [string]: [...string]

				// Settings for the Audit SSH action.
				audit_ssh?: close({
					// Enable to turn on SSH command logging.
					command_logging?: bool
				})

				// Set by parent MSP accounts to enable their children to bypass
				// this rule.
				allow_child_bypass?: bool

				// Configure how browser isolation behaves.
				biso_admin_controls?: close({
					// Configure whether copy is enabled or not. When set with
					// "remote_only", copying isolated content from the remote
					// browser to the user's local clipboard is disabled. When
					// absent, copy is enabled. Only applies when `version == "v2"`.
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

					// Configure whether downloading enabled or not. When set with
					// "remote_only", downloads are only available for viewing. Only
					// applies when `version == "v2"`.
					// Available values: "enabled", "disabled", "remote_only".
					download?: string

					// Set to false to enable printing. Only applies when `version ==
					// "v1"`.
					dp?: bool

					// Set to false to enable uploading. Only applies when `version ==
					// "v1"`.
					du?: bool

					// Configure whether keyboard usage is enabled or not. When
					// absent, keyboard usage is enabled. Only applies when `version
					// == "v2"`.
					// Available values: "enabled", "disabled".
					keyboard?: string

					// Configure whether pasting is enabled or not. When set with
					// "remote_only", pasting content from the user's local clipboard
					// into isolated pages is disabled. When absent, paste is
					// enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled", "remote_only".
					paste?: string

					// Configure whether printing is enabled or not. When absent,
					// printing is enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled".
					printing?: string

					// Configure whether uploading is enabled or not. When absent,
					// uploading is enabled. Only applies when `version == "v2"`.
					// Available values: "enabled", "disabled".
					upload?: string

					// Indicates which version of the browser isolation controls
					// should apply.
					// Available values: "v1", "v2".
					version?: string
				})

				// Custom block page settings. If missing/null, blocking will use
				// the the account settings.
				block_page?: close({
					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// URI to which the user will be redirected.
					target_uri?: string
				})

				// Configure how session check behaves.
				check_session?: close({
					// Configure how fresh the session needs to be to be considered
					// valid. The API automatically formats and sanitizes this
					// expression. This returns a normalized version that may differ
					// from your input and cause Terraform state drift.
					duration?: string

					// Set to true to enable session enforcement.
					enforce?: bool
				})

				// Enable the custom block page.
				block_page_enabled?: bool

				// Add your own custom resolvers to route queries that match the
				// resolver policy. Cannot be used when
				// 'resolve_dns_through_cloudflare' or 'resolve_dns_internally'
				// are set. DNS queries will route to the address closest to
				// their origin. Only valid when a rule's action is set to
				// 'resolve'.
				dns_resolvers?: close({
					ipv4?: matchN(1, [close({
						// IPv4 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					}), [...close({
						// IPv4 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					})]])
					ipv6?: matchN(1, [close({
						// IPv6 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					}), [...close({
						// IPv6 address of upstream resolver.
						ip?: string

						// A port number to use for upstream resolver. Defaults to 53 if
						// unspecified.
						port?: number

						// Whether to connect to this resolver over a private network.
						// Must be set when vnet_id is set.
						route_through_private_network?: bool

						// Optionally specify a virtual network for this resolver. Uses
						// default virtual network id if omitted.
						vnet_id?: string
					})]])
				})

				// The text describing why this block occurred, displayed on the
				// custom block page (if enabled).
				block_reason?: string

				// Configure how Gateway Proxy traffic egresses. You can enable
				// this setting for rules with Egress actions and filters, or
				// omit it to indicate local egress via WARP IPs.
				egress?: close({
					// The IPv4 address to be used for egress.
					ipv4?: string

					// The fallback IPv4 address to be used for egress in the event of
					// an error egressing with the primary IPv4. Can be '0.0.0.0' to
					// indicate local egress via WARP IPs.
					ipv4_fallback?: string

					// The IPv6 range to be used for egress.
					ipv6?: string
				})

				// Set by children MSP accounts to bypass their parent's rules.
				bypass_parent_rule?: bool

				// Send matching traffic to the supplied destination IP address.
				// and port.
				l4override?: close({
					// IPv4 or IPv6 address.
					ip?: string

					// A port number to use for TCP/UDP overrides.
					port?: number
				})

				// Set to true, to ignore the category matches at CNAME domains in
				// a response. If unchecked, the categories in this rule will be
				// checked against all the CNAME domain categories in a response.
				ignore_cname_category_matches?: bool

				// INSECURE - disable DNSSEC validation (for Allow actions).
				insecure_disable_dnssec_validation?: bool

				// Set to true to enable IPs in DNS resolver category blocks. By
				// default categories only block based on domain names.
				ip_categories?: bool

				// Set to true to include IPs in DNS resolver indicator feed
				// blocks. By default indicator feeds only block based on domain
				// names.
				ip_indicator_feeds?: bool

				// Configure a notification to display on the user's device when
				// this rule is matched.
				notification_settings?: close({
					// Set notification on.
					enabled?: bool

					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// Customize the message shown in the notification.
					msg?: string

					// Optional URL to direct users to additional information. If not
					// set, the notification will open a block page.
					support_url?: string
				})

				// Configure DLP payload logging.
				payload_log?: close({
					// Set to true to enable DLP payload logging for this rule.
					enabled?: bool
				})

				// Override matching DNS queries with a hostname.
				override_host?: string

				// Settings that apply to quarantine rules.
				quarantine?: close({
					// Types of files to sandbox.
					file_types?: [...string]
				})

				// Override matching DNS queries with an IP or set of IPs.
				override_ips?: [...string]

				// Enable to send queries that match the policy to Cloudflare's
				// default 1.1.1.1 DNS resolver. Cannot be set when
				// 'dns_resolvers' are specified or 'resolve_dns_internally' is
				// set. Only valid when a rule's action is set to 'resolve'.
				resolve_dns_through_cloudflare?: bool

				// Settings that apply to redirect rules.
				redirect?: close({
					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// If true, the path and query parameters from the original
					// request will be appended to target_uri.
					preserve_path_and_query?: bool

					// URI to which the user will be redirected.
					target_uri?: string
				})

				// Configure to forward the query to the internal DNS service,
				// passing the specified 'view_id' as input. Cannot be set when
				// 'dns_resolvers' are specified or
				// 'resolve_dns_through_cloudflare' is set. Only valid when a
				// rule's action is set to 'resolve'.
				resolve_dns_internally?: close({
					// The fallback behavior to apply when the internal DNS response
					// code is different from 'NOERROR' or when the response data
					// only contains CNAME records for 'A' or 'AAAA' queries.
					// Available values: "none", "public_dns".
					fallback?: string

					// The internal DNS view identifier that's passed to the internal
					// DNS service.
					view_id?: string
				})

				// Configure behavior when an upstream cert is invalid or an SSL
				// error occurs.
				untrusted_cert?: close({
					// The action performed when an untrusted certificate is seen. The
					// default action is an error with HTTP code 526.
					// Available values: "pass_through", "block", "error".
					action?: string
				})
			})

			// The API resource UUID.
			id?: string

			// The wirefilter expression used for identity matching. The API
			// automatically formats and sanitizes this expression. This
			// returns a normalized version that may differ from your input
			// and cause Terraform state drift.
			identity?: string

			// The name of the rule.
			name?: string

			// The rule cannot be shared via the Orgs API.
			not_sharable?: bool

			// Precedence sets the order of your rules. Lower values indicate
			// higher precedence. At each processing phase, applicable rules
			// are evaluated in ascending order of this value. Refer to
			// [Order of
			// enforcement](http://developers.cloudflare.com/learning-paths/secure-internet-traffic/understand-policies/order-of-enforcement/#manage-precedence-with-terraform)
			// docs on how to manage precedence via Terraform.
			precedence?: number

			// The rule was shared via the Orgs API and cannot be edited by
			// the current account.
			read_only?: bool

			// account tag of account that created the rule.
			source_account?: string

			// The schedule for activating DNS policies. This does not apply
			// to HTTP or network policies.
			schedule?: close({
				// The time intervals when the rule will be active on Fridays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Fridays.
				fri?: string

				// The time intervals when the rule will be active on Mondays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Mondays.
				mon?: string

				// The time intervals when the rule will be active on Saturdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Saturdays.
				sat?: string

				// The time intervals when the rule will be active on Sundays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Sundays.
				sun?: string

				// The time intervals when the rule will be active on Thursdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Thursdays.
				thu?: string

				// The time zone the rule will be evaluated against. If a [valid
				// time zone city
				// name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)
				// is provided, Gateway will always use the current time at that
				// time zone. If this parameter is omitted, then Gateway will use
				// the time zone inferred from the user's source IP to evaluate
				// the rule. If Gateway cannot determine the time zone from the
				// IP, we will fall back to the time zone of the user's connected
				// data center.
				time_zone?: string

				// The time intervals when the rule will be active on Tuesdays, in
				// increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Tuesdays.
				tue?: string

				// The time intervals when the rule will be active on Wednesdays,
				// in increasing order from 00:00-24:00. If this parameter is
				// omitted, the rule will be deactivated on Wednesdays.
				wed?: string
			})

			// The wirefilter expression used for traffic matching. The API
			// automatically formats and sanitizes this expression. This
			// returns a normalized version that may differ from your input
			// and cause Terraform state drift.
			traffic?:    string
			updated_at?: string

			// version number of the rule.
			version?: number

			// Warning for a misconfigured rule, if any.
			warning_status?: string
		})]])
	})
}
