package elasticstack

import "github.com/roman-mazur/cuetf/elasticstack/data"

#Terraform: {
	#prefix: string
	#ds: "\(#prefix)_elasticsearch_enrich_policy": data.#elasticstack_elasticsearch_enrich_policy
	#ds: "\(#prefix)_elasticsearch_index_template": data.#elasticstack_elasticsearch_index_template
	#ds: "\(#prefix)_elasticsearch_indices": data.#elasticstack_elasticsearch_indices
	#ds: "\(#prefix)_elasticsearch_info": data.#elasticstack_elasticsearch_info
	#ds: "\(#prefix)_elasticsearch_ingest_processor_append": data.#elasticstack_elasticsearch_ingest_processor_append
	#ds: "\(#prefix)_elasticsearch_ingest_processor_bytes": data.#elasticstack_elasticsearch_ingest_processor_bytes
	#ds: "\(#prefix)_elasticsearch_ingest_processor_circle": data.#elasticstack_elasticsearch_ingest_processor_circle
	#ds: "\(#prefix)_elasticsearch_ingest_processor_community_id": data.#elasticstack_elasticsearch_ingest_processor_community_id
	#ds: "\(#prefix)_elasticsearch_ingest_processor_convert": data.#elasticstack_elasticsearch_ingest_processor_convert
	#ds: "\(#prefix)_elasticsearch_ingest_processor_csv": data.#elasticstack_elasticsearch_ingest_processor_csv
	#ds: "\(#prefix)_elasticsearch_ingest_processor_date": data.#elasticstack_elasticsearch_ingest_processor_date
	#ds: "\(#prefix)_elasticsearch_ingest_processor_date_index_name": data.#elasticstack_elasticsearch_ingest_processor_date_index_name
	#ds: "\(#prefix)_elasticsearch_ingest_processor_dissect": data.#elasticstack_elasticsearch_ingest_processor_dissect
	#ds: "\(#prefix)_elasticsearch_ingest_processor_dot_expander": data.#elasticstack_elasticsearch_ingest_processor_dot_expander
	#ds: "\(#prefix)_elasticsearch_ingest_processor_drop": data.#elasticstack_elasticsearch_ingest_processor_drop
	#ds: "\(#prefix)_elasticsearch_ingest_processor_enrich": data.#elasticstack_elasticsearch_ingest_processor_enrich
	#ds: "\(#prefix)_elasticsearch_ingest_processor_fail": data.#elasticstack_elasticsearch_ingest_processor_fail
	#ds: "\(#prefix)_elasticsearch_ingest_processor_fingerprint": data.#elasticstack_elasticsearch_ingest_processor_fingerprint
	#ds: "\(#prefix)_elasticsearch_ingest_processor_foreach": data.#elasticstack_elasticsearch_ingest_processor_foreach
	#ds: "\(#prefix)_elasticsearch_ingest_processor_geoip": data.#elasticstack_elasticsearch_ingest_processor_geoip
	#ds: "\(#prefix)_elasticsearch_ingest_processor_grok": data.#elasticstack_elasticsearch_ingest_processor_grok
	#ds: "\(#prefix)_elasticsearch_ingest_processor_gsub": data.#elasticstack_elasticsearch_ingest_processor_gsub
	#ds: "\(#prefix)_elasticsearch_ingest_processor_html_strip": data.#elasticstack_elasticsearch_ingest_processor_html_strip
	#ds: "\(#prefix)_elasticsearch_ingest_processor_join": data.#elasticstack_elasticsearch_ingest_processor_join
	#ds: "\(#prefix)_elasticsearch_ingest_processor_json": data.#elasticstack_elasticsearch_ingest_processor_json
	#ds: "\(#prefix)_elasticsearch_ingest_processor_kv": data.#elasticstack_elasticsearch_ingest_processor_kv
	#ds: "\(#prefix)_elasticsearch_ingest_processor_lowercase": data.#elasticstack_elasticsearch_ingest_processor_lowercase
	#ds: "\(#prefix)_elasticsearch_ingest_processor_network_direction": data.#elasticstack_elasticsearch_ingest_processor_network_direction
	#ds: "\(#prefix)_elasticsearch_ingest_processor_pipeline": data.#elasticstack_elasticsearch_ingest_processor_pipeline
	#ds: "\(#prefix)_elasticsearch_ingest_processor_registered_domain": data.#elasticstack_elasticsearch_ingest_processor_registered_domain
	#ds: "\(#prefix)_elasticsearch_ingest_processor_remove": data.#elasticstack_elasticsearch_ingest_processor_remove
	#ds: "\(#prefix)_elasticsearch_ingest_processor_rename": data.#elasticstack_elasticsearch_ingest_processor_rename
	#ds: "\(#prefix)_elasticsearch_ingest_processor_reroute": data.#elasticstack_elasticsearch_ingest_processor_reroute
	#ds: "\(#prefix)_elasticsearch_ingest_processor_script": data.#elasticstack_elasticsearch_ingest_processor_script
	#ds: "\(#prefix)_elasticsearch_ingest_processor_set": data.#elasticstack_elasticsearch_ingest_processor_set
	#ds: "\(#prefix)_elasticsearch_ingest_processor_set_security_user": data.#elasticstack_elasticsearch_ingest_processor_set_security_user
	#ds: "\(#prefix)_elasticsearch_ingest_processor_sort": data.#elasticstack_elasticsearch_ingest_processor_sort
	#ds: "\(#prefix)_elasticsearch_ingest_processor_split": data.#elasticstack_elasticsearch_ingest_processor_split
	#ds: "\(#prefix)_elasticsearch_ingest_processor_trim": data.#elasticstack_elasticsearch_ingest_processor_trim
	#ds: "\(#prefix)_elasticsearch_ingest_processor_uppercase": data.#elasticstack_elasticsearch_ingest_processor_uppercase
	#ds: "\(#prefix)_elasticsearch_ingest_processor_uri_parts": data.#elasticstack_elasticsearch_ingest_processor_uri_parts
	#ds: "\(#prefix)_elasticsearch_ingest_processor_urldecode": data.#elasticstack_elasticsearch_ingest_processor_urldecode
	#ds: "\(#prefix)_elasticsearch_ingest_processor_user_agent": data.#elasticstack_elasticsearch_ingest_processor_user_agent
	#ds: "\(#prefix)_elasticsearch_security_role": data.#elasticstack_elasticsearch_security_role
	#ds: "\(#prefix)_elasticsearch_security_role_mapping": data.#elasticstack_elasticsearch_security_role_mapping
	#ds: "\(#prefix)_elasticsearch_security_user": data.#elasticstack_elasticsearch_security_user
	#ds: "\(#prefix)_elasticsearch_snapshot_repository": data.#elasticstack_elasticsearch_snapshot_repository
	#ds: "\(#prefix)_fleet_enrollment_tokens": data.#elasticstack_fleet_enrollment_tokens
	#ds: "\(#prefix)_fleet_integration": data.#elasticstack_fleet_integration
	#ds: "\(#prefix)_kibana_action_connector": data.#elasticstack_kibana_action_connector
	#ds: "\(#prefix)_kibana_export_saved_objects": data.#elasticstack_kibana_export_saved_objects
	#ds: "\(#prefix)_kibana_security_role": data.#elasticstack_kibana_security_role
	#ds: "\(#prefix)_kibana_spaces": data.#elasticstack_kibana_spaces

}
