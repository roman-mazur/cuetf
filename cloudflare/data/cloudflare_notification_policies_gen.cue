package data

#cloudflare_notification_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_notification_policies")
	close({
		// The account id
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Optional filters that allow you to be alerted only on a subset
			// of events for that alert type based on some criteria. This is
			// only available for select alert types. See alert type
			// documentation for more details.
			filters?: close({
				// Usage depends on specific alert type
				actions?: [...string]

				// Used for configuring radar_notification
				affected_asns?: [...string]

				// Used for configuring incident_alert
				affected_components?: [...string]

				// Used for configuring radar_notification
				affected_locations?: [...string]

				// Used for configuring maintenance_event_notification
				airport_code?: [...string]

				// Usage depends on specific alert type
				alert_trigger_preferences?: [...string]

				// Usage depends on specific alert type
				alert_trigger_preferences_value?: [...string]

				// Used for configuring load_balancing_pool_enablement_alert
				enabled?: [...string]

				// Used for configuring pages_event_alert
				environment?: [...string]

				// Used for configuring pages_event_alert
				event?: [...string]

				// Used for configuring load_balancing_health_alert
				event_source?: [...string]

				// Usage depends on specific alert type
				event_type?: [...string]

				// Usage depends on specific alert type
				group_by?: [...string]

				// Used for configuring health_check_status_notification
				health_check_id?: [...string]

				// Used for configuring incident_alert
				incident_impact?: [...string]

				// Used for configuring stream_live_notifications
				input_id?: [...string]

				// Used for configuring security_insights_alert
				insight_class?: [...string]

				// Used for configuring billing_usage_alert
				limit?: [...string]

				// Used for configuring logo_match_alert
				logo_tag?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				megabits_per_second?: [...string]

				// Used for configuring load_balancing_health_alert
				new_health?: [...string]

				// Used for configuring tunnel_health_event
				new_status?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				packets_per_second?: [...string]

				// Usage depends on specific alert type
				pool_id?: [...string]

				// Usage depends on specific alert type
				pop_names?: [...string]

				// Used for configuring billing_usage_alert
				product?: [...string]

				// Used for configuring pages_event_alert
				project_id?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				protocol?: [...string]

				// Usage depends on specific alert type
				query_tag?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				requests_per_second?: [...string]

				// Usage depends on specific alert type
				selectors?: [...string]

				// Used for configuring clickhouse_alert_fw_ent_anomaly
				services?: [...string]

				// Usage depends on specific alert type
				slo?: [...string]

				// Used for configuring health_check_status_notification
				status?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				target_hostname?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				target_ip?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				target_zone_name?: [...string]

				// Used for configuring traffic_anomalies_alert
				traffic_exclusions?: [...string]

				// Used for configuring tunnel_health_event
				tunnel_id?: [...string]

				// Usage depends on specific alert type
				tunnel_name?: [...string]

				// Usage depends on specific alert type
				where?: [...string]

				// Usage depends on specific alert type
				zones?: [...string]
			})

			// Optional specification of how often to re-alert from the same
			// incident, not support on all alert types.
			alert_interval?: string

			// Refers to which event will trigger a Notification dispatch. You
			// can use the endpoint to get available alert types which then
			// will give you a list of possible values.
			// Available values: "access_custom_certificate_expiration_type",
			// "advanced_ddos_attack_l4_alert",
			// "advanced_ddos_attack_l7_alert", "advanced_http_alert_error",
			// "bgp_hijack_notification", "billing_usage_alert",
			// "block_notification_block_removed",
			// "block_notification_new_block",
			// "block_notification_review_rejected",
			// "bot_traffic_basic_alert", "brand_protection_alert",
			// "brand_protection_digest", "clickhouse_alert_fw_anomaly",
			// "clickhouse_alert_fw_ent_anomaly",
			// "cloudforce_one_request_notification", "custom_analytics",
			// "custom_bot_detection_alert",
			// "custom_ssl_certificate_event_type",
			// "dedicated_ssl_certificate_event_type",
			// "device_connectivity_anomaly_alert", "dos_attack_l4",
			// "dos_attack_l7", "expiring_service_token_alert",
			// "failing_logpush_job_disabled_alert",
			// "fbm_auto_advertisement", "fbm_dosd_attack",
			// "fbm_volumetric_attack", "health_check_status_notification",
			// "hostname_aop_custom_certificate_expiration_type",
			// "http_alert_edge_error", "http_alert_origin_error",
			// "image_notification", "image_resizing_notification",
			// "incident_alert", "load_balancing_health_alert",
			// "load_balancing_pool_enablement_alert", "logo_match_alert",
			// "magic_tunnel_health_check_event", "magic_wan_tunnel_health",
			// "maintenance_event_notification",
			// "mtls_certificate_store_certificate_expiration_type",
			// "pages_event_alert", "radar_notification",
			// "real_origin_monitoring",
			// "scriptmonitor_alert_new_code_change_detections",
			// "scriptmonitor_alert_new_hosts",
			// "scriptmonitor_alert_new_malicious_hosts",
			// "scriptmonitor_alert_new_malicious_scripts",
			// "scriptmonitor_alert_new_malicious_url",
			// "scriptmonitor_alert_new_max_length_resource_url",
			// "scriptmonitor_alert_new_resources",
			// "secondary_dns_all_primaries_failing",
			// "secondary_dns_primaries_failing", "secondary_dns_warning",
			// "secondary_dns_zone_successfully_updated",
			// "secondary_dns_zone_validation_warning",
			// "security_insights_alert", "sentinel_alert",
			// "stream_live_notifications", "synthetic_test_latency_alert",
			// "synthetic_test_low_availability_alert",
			// "traffic_anomalies_alert", "tunnel_health_event",
			// "tunnel_update_event", "universal_ssl_event_type",
			// "web_analytics_metrics_update",
			// "zone_aop_custom_certificate_expiration_type".
			alert_type?: string

			// Optional description for the Notification policy.
			description?: string

			// List of IDs that will be used when dispatching a notification.
			// IDs for email type will be the email address.
			mechanisms?: close({
				email?: matchN(1, [close({
					// The email address
					id?: string
				}), [...close({
					// The email address
					id?: string
				})]])
				pagerduty?: matchN(1, [close({
					// UUID
					id?: string
				}), [...close({
					// UUID
					id?: string
				})]])
				webhooks?: matchN(1, [close({
					// UUID
					id?: string
				}), [...close({
					// UUID
					id?: string
				})]])
			})

			// Whether or not the Notification policy is enabled.
			enabled?: bool
			created?: string

			// The unique identifier of a notification policy
			id?: string

			// Name of the policy.
			name?:     string
			modified?: string
		}), [...close({
			// Optional filters that allow you to be alerted only on a subset
			// of events for that alert type based on some criteria. This is
			// only available for select alert types. See alert type
			// documentation for more details.
			filters?: close({
				// Usage depends on specific alert type
				actions?: [...string]

				// Used for configuring radar_notification
				affected_asns?: [...string]

				// Used for configuring incident_alert
				affected_components?: [...string]

				// Used for configuring radar_notification
				affected_locations?: [...string]

				// Used for configuring maintenance_event_notification
				airport_code?: [...string]

				// Usage depends on specific alert type
				alert_trigger_preferences?: [...string]

				// Usage depends on specific alert type
				alert_trigger_preferences_value?: [...string]

				// Used for configuring load_balancing_pool_enablement_alert
				enabled?: [...string]

				// Used for configuring pages_event_alert
				environment?: [...string]

				// Used for configuring pages_event_alert
				event?: [...string]

				// Used for configuring load_balancing_health_alert
				event_source?: [...string]

				// Usage depends on specific alert type
				event_type?: [...string]

				// Usage depends on specific alert type
				group_by?: [...string]

				// Used for configuring health_check_status_notification
				health_check_id?: [...string]

				// Used for configuring incident_alert
				incident_impact?: [...string]

				// Used for configuring stream_live_notifications
				input_id?: [...string]

				// Used for configuring security_insights_alert
				insight_class?: [...string]

				// Used for configuring billing_usage_alert
				limit?: [...string]

				// Used for configuring logo_match_alert
				logo_tag?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				megabits_per_second?: [...string]

				// Used for configuring load_balancing_health_alert
				new_health?: [...string]

				// Used for configuring tunnel_health_event
				new_status?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				packets_per_second?: [...string]

				// Usage depends on specific alert type
				pool_id?: [...string]

				// Usage depends on specific alert type
				pop_names?: [...string]

				// Used for configuring billing_usage_alert
				product?: [...string]

				// Used for configuring pages_event_alert
				project_id?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				protocol?: [...string]

				// Usage depends on specific alert type
				query_tag?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				requests_per_second?: [...string]

				// Usage depends on specific alert type
				selectors?: [...string]

				// Used for configuring clickhouse_alert_fw_ent_anomaly
				services?: [...string]

				// Usage depends on specific alert type
				slo?: [...string]

				// Used for configuring health_check_status_notification
				status?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				target_hostname?: [...string]

				// Used for configuring advanced_ddos_attack_l4_alert
				target_ip?: [...string]

				// Used for configuring advanced_ddos_attack_l7_alert
				target_zone_name?: [...string]

				// Used for configuring traffic_anomalies_alert
				traffic_exclusions?: [...string]

				// Used for configuring tunnel_health_event
				tunnel_id?: [...string]

				// Usage depends on specific alert type
				tunnel_name?: [...string]

				// Usage depends on specific alert type
				where?: [...string]

				// Usage depends on specific alert type
				zones?: [...string]
			})

			// Optional specification of how often to re-alert from the same
			// incident, not support on all alert types.
			alert_interval?: string

			// Refers to which event will trigger a Notification dispatch. You
			// can use the endpoint to get available alert types which then
			// will give you a list of possible values.
			// Available values: "access_custom_certificate_expiration_type",
			// "advanced_ddos_attack_l4_alert",
			// "advanced_ddos_attack_l7_alert", "advanced_http_alert_error",
			// "bgp_hijack_notification", "billing_usage_alert",
			// "block_notification_block_removed",
			// "block_notification_new_block",
			// "block_notification_review_rejected",
			// "bot_traffic_basic_alert", "brand_protection_alert",
			// "brand_protection_digest", "clickhouse_alert_fw_anomaly",
			// "clickhouse_alert_fw_ent_anomaly",
			// "cloudforce_one_request_notification", "custom_analytics",
			// "custom_bot_detection_alert",
			// "custom_ssl_certificate_event_type",
			// "dedicated_ssl_certificate_event_type",
			// "device_connectivity_anomaly_alert", "dos_attack_l4",
			// "dos_attack_l7", "expiring_service_token_alert",
			// "failing_logpush_job_disabled_alert",
			// "fbm_auto_advertisement", "fbm_dosd_attack",
			// "fbm_volumetric_attack", "health_check_status_notification",
			// "hostname_aop_custom_certificate_expiration_type",
			// "http_alert_edge_error", "http_alert_origin_error",
			// "image_notification", "image_resizing_notification",
			// "incident_alert", "load_balancing_health_alert",
			// "load_balancing_pool_enablement_alert", "logo_match_alert",
			// "magic_tunnel_health_check_event", "magic_wan_tunnel_health",
			// "maintenance_event_notification",
			// "mtls_certificate_store_certificate_expiration_type",
			// "pages_event_alert", "radar_notification",
			// "real_origin_monitoring",
			// "scriptmonitor_alert_new_code_change_detections",
			// "scriptmonitor_alert_new_hosts",
			// "scriptmonitor_alert_new_malicious_hosts",
			// "scriptmonitor_alert_new_malicious_scripts",
			// "scriptmonitor_alert_new_malicious_url",
			// "scriptmonitor_alert_new_max_length_resource_url",
			// "scriptmonitor_alert_new_resources",
			// "secondary_dns_all_primaries_failing",
			// "secondary_dns_primaries_failing", "secondary_dns_warning",
			// "secondary_dns_zone_successfully_updated",
			// "secondary_dns_zone_validation_warning",
			// "security_insights_alert", "sentinel_alert",
			// "stream_live_notifications", "synthetic_test_latency_alert",
			// "synthetic_test_low_availability_alert",
			// "traffic_anomalies_alert", "tunnel_health_event",
			// "tunnel_update_event", "universal_ssl_event_type",
			// "web_analytics_metrics_update",
			// "zone_aop_custom_certificate_expiration_type".
			alert_type?: string

			// Optional description for the Notification policy.
			description?: string

			// List of IDs that will be used when dispatching a notification.
			// IDs for email type will be the email address.
			mechanisms?: close({
				email?: matchN(1, [close({
					// The email address
					id?: string
				}), [...close({
					// The email address
					id?: string
				})]])
				pagerduty?: matchN(1, [close({
					// UUID
					id?: string
				}), [...close({
					// UUID
					id?: string
				})]])
				webhooks?: matchN(1, [close({
					// UUID
					id?: string
				}), [...close({
					// UUID
					id?: string
				})]])
			})

			// Whether or not the Notification policy is enabled.
			enabled?: bool
			created?: string

			// The unique identifier of a notification policy
			id?: string

			// Name of the policy.
			name?:     string
			modified?: string
		})]])
	})
}
