package data

#cloudflare_logpush_dataset_field: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_dataset_field")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Name of the dataset. A list of supported datasets can be found
		// on the [Developer
		// Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
		// Available values: "access_requests", "audit_logs",
		// "biso_user_actions", "casb_findings",
		// "device_posture_results", "dlp_forensic_copies",
		// "dns_firewall_logs", "dns_logs", "email_security_alerts",
		// "firewall_events", "gateway_dns", "gateway_http",
		// "gateway_network", "http_requests", "magic_ids_detections",
		// "nel_reports", "network_analytics_logs", "page_shield_events",
		// "sinkhole_http_logs", "spectrum_events", "ssh_logs",
		// "workers_trace_events", "zaraz_events",
		// "zero_trust_network_sessions".
		dataset_id?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
