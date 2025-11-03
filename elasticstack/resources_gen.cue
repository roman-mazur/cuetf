package elasticstack

import "github.com/roman-mazur/cuetf/elasticstack/res"

#Terraform: {
	#prefix: string
	#res: "\(#prefix)_apm_agent_configuration": res.#elasticstack_apm_agent_configuration
	#res: "\(#prefix)_elasticsearch_cluster_settings": res.#elasticstack_elasticsearch_cluster_settings
	#res: "\(#prefix)_elasticsearch_component_template": res.#elasticstack_elasticsearch_component_template
	#res: "\(#prefix)_elasticsearch_data_stream": res.#elasticstack_elasticsearch_data_stream
	#res: "\(#prefix)_elasticsearch_data_stream_lifecycle": res.#elasticstack_elasticsearch_data_stream_lifecycle
	#res: "\(#prefix)_elasticsearch_enrich_policy": res.#elasticstack_elasticsearch_enrich_policy
	#res: "\(#prefix)_elasticsearch_index": res.#elasticstack_elasticsearch_index
	#res: "\(#prefix)_elasticsearch_index_lifecycle": res.#elasticstack_elasticsearch_index_lifecycle
	#res: "\(#prefix)_elasticsearch_index_template": res.#elasticstack_elasticsearch_index_template
	#res: "\(#prefix)_elasticsearch_ingest_pipeline": res.#elasticstack_elasticsearch_ingest_pipeline
	#res: "\(#prefix)_elasticsearch_logstash_pipeline": res.#elasticstack_elasticsearch_logstash_pipeline
	#res: "\(#prefix)_elasticsearch_script": res.#elasticstack_elasticsearch_script
	#res: "\(#prefix)_elasticsearch_security_api_key": res.#elasticstack_elasticsearch_security_api_key
	#res: "\(#prefix)_elasticsearch_security_role": res.#elasticstack_elasticsearch_security_role
	#res: "\(#prefix)_elasticsearch_security_role_mapping": res.#elasticstack_elasticsearch_security_role_mapping
	#res: "\(#prefix)_elasticsearch_security_system_user": res.#elasticstack_elasticsearch_security_system_user
	#res: "\(#prefix)_elasticsearch_security_user": res.#elasticstack_elasticsearch_security_user
	#res: "\(#prefix)_elasticsearch_snapshot_lifecycle": res.#elasticstack_elasticsearch_snapshot_lifecycle
	#res: "\(#prefix)_elasticsearch_snapshot_repository": res.#elasticstack_elasticsearch_snapshot_repository
	#res: "\(#prefix)_elasticsearch_transform": res.#elasticstack_elasticsearch_transform
	#res: "\(#prefix)_elasticsearch_watch": res.#elasticstack_elasticsearch_watch
	#res: "\(#prefix)_fleet_agent_policy": res.#elasticstack_fleet_agent_policy
	#res: "\(#prefix)_fleet_integration": res.#elasticstack_fleet_integration
	#res: "\(#prefix)_fleet_integration_policy": res.#elasticstack_fleet_integration_policy
	#res: "\(#prefix)_fleet_output": res.#elasticstack_fleet_output
	#res: "\(#prefix)_fleet_server_host": res.#elasticstack_fleet_server_host
	#res: "\(#prefix)_kibana_action_connector": res.#elasticstack_kibana_action_connector
	#res: "\(#prefix)_kibana_alerting_rule": res.#elasticstack_kibana_alerting_rule
	#res: "\(#prefix)_kibana_data_view": res.#elasticstack_kibana_data_view
	#res: "\(#prefix)_kibana_import_saved_objects": res.#elasticstack_kibana_import_saved_objects
	#res: "\(#prefix)_kibana_maintenance_window": res.#elasticstack_kibana_maintenance_window
	#res: "\(#prefix)_kibana_security_detection_rule": res.#elasticstack_kibana_security_detection_rule
	#res: "\(#prefix)_kibana_security_role": res.#elasticstack_kibana_security_role
	#res: "\(#prefix)_kibana_slo": res.#elasticstack_kibana_slo
	#res: "\(#prefix)_kibana_space": res.#elasticstack_kibana_space
	#res: "\(#prefix)_kibana_synthetics_monitor": res.#elasticstack_kibana_synthetics_monitor
	#res: "\(#prefix)_kibana_synthetics_parameter": res.#elasticstack_kibana_synthetics_parameter
	#res: "\(#prefix)_kibana_synthetics_private_location": res.#elasticstack_kibana_synthetics_private_location

}
