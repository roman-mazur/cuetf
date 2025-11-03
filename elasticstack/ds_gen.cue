package elasticstack

import "github.com/roman-mazur/cuetf/elasticstack/data"

#Terraform: {
	#elasticstackPrefix: string
	_#ds: "\(#elasticstackPrefix)_elasticsearch_enrich_policy": data.#elasticstack_elasticsearch_enrich_policy
	_#ds: "\(#elasticstackPrefix)_elasticsearch_index_template": data.#elasticstack_elasticsearch_index_template
	_#ds: "\(#elasticstackPrefix)_elasticsearch_indices": data.#elasticstack_elasticsearch_indices
	_#ds: "\(#elasticstackPrefix)_elasticsearch_info": data.#elasticstack_elasticsearch_info
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_append": data.#elasticstack_elasticsearch_ingest_processor_append
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_bytes": data.#elasticstack_elasticsearch_ingest_processor_bytes
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_circle": data.#elasticstack_elasticsearch_ingest_processor_circle
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_community_id": data.#elasticstack_elasticsearch_ingest_processor_community_id
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_convert": data.#elasticstack_elasticsearch_ingest_processor_convert
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_csv": data.#elasticstack_elasticsearch_ingest_processor_csv
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_date": data.#elasticstack_elasticsearch_ingest_processor_date
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_date_index_name": data.#elasticstack_elasticsearch_ingest_processor_date_index_name
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_dissect": data.#elasticstack_elasticsearch_ingest_processor_dissect
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_dot_expander": data.#elasticstack_elasticsearch_ingest_processor_dot_expander
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_drop": data.#elasticstack_elasticsearch_ingest_processor_drop
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_enrich": data.#elasticstack_elasticsearch_ingest_processor_enrich
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_fail": data.#elasticstack_elasticsearch_ingest_processor_fail
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_fingerprint": data.#elasticstack_elasticsearch_ingest_processor_fingerprint
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_foreach": data.#elasticstack_elasticsearch_ingest_processor_foreach
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_geoip": data.#elasticstack_elasticsearch_ingest_processor_geoip
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_grok": data.#elasticstack_elasticsearch_ingest_processor_grok
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_gsub": data.#elasticstack_elasticsearch_ingest_processor_gsub
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_html_strip": data.#elasticstack_elasticsearch_ingest_processor_html_strip
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_join": data.#elasticstack_elasticsearch_ingest_processor_join
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_json": data.#elasticstack_elasticsearch_ingest_processor_json
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_kv": data.#elasticstack_elasticsearch_ingest_processor_kv
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_lowercase": data.#elasticstack_elasticsearch_ingest_processor_lowercase
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_network_direction": data.#elasticstack_elasticsearch_ingest_processor_network_direction
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_pipeline": data.#elasticstack_elasticsearch_ingest_processor_pipeline
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_registered_domain": data.#elasticstack_elasticsearch_ingest_processor_registered_domain
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_remove": data.#elasticstack_elasticsearch_ingest_processor_remove
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_rename": data.#elasticstack_elasticsearch_ingest_processor_rename
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_reroute": data.#elasticstack_elasticsearch_ingest_processor_reroute
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_script": data.#elasticstack_elasticsearch_ingest_processor_script
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_set": data.#elasticstack_elasticsearch_ingest_processor_set
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_set_security_user": data.#elasticstack_elasticsearch_ingest_processor_set_security_user
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_sort": data.#elasticstack_elasticsearch_ingest_processor_sort
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_split": data.#elasticstack_elasticsearch_ingest_processor_split
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_trim": data.#elasticstack_elasticsearch_ingest_processor_trim
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_uppercase": data.#elasticstack_elasticsearch_ingest_processor_uppercase
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_uri_parts": data.#elasticstack_elasticsearch_ingest_processor_uri_parts
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_urldecode": data.#elasticstack_elasticsearch_ingest_processor_urldecode
	_#ds: "\(#elasticstackPrefix)_elasticsearch_ingest_processor_user_agent": data.#elasticstack_elasticsearch_ingest_processor_user_agent
	_#ds: "\(#elasticstackPrefix)_elasticsearch_security_role": data.#elasticstack_elasticsearch_security_role
	_#ds: "\(#elasticstackPrefix)_elasticsearch_security_role_mapping": data.#elasticstack_elasticsearch_security_role_mapping
	_#ds: "\(#elasticstackPrefix)_elasticsearch_security_user": data.#elasticstack_elasticsearch_security_user
	_#ds: "\(#elasticstackPrefix)_elasticsearch_snapshot_repository": data.#elasticstack_elasticsearch_snapshot_repository
	_#ds: "\(#elasticstackPrefix)_fleet_enrollment_tokens": data.#elasticstack_fleet_enrollment_tokens
	_#ds: "\(#elasticstackPrefix)_fleet_integration": data.#elasticstack_fleet_integration
	_#ds: "\(#elasticstackPrefix)_kibana_action_connector": data.#elasticstack_kibana_action_connector
	_#ds: "\(#elasticstackPrefix)_kibana_export_saved_objects": data.#elasticstack_kibana_export_saved_objects
	_#ds: "\(#elasticstackPrefix)_kibana_security_role": data.#elasticstack_kibana_security_role
	_#ds: "\(#elasticstackPrefix)_kibana_spaces": data.#elasticstack_kibana_spaces

}
