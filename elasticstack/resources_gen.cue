package elasticstack

import "github.com/roman-mazur/cuetf/elasticstack/res"

#Terraform: {
	#elasticstackPrefix: string
	_#res: "\(#elasticstackPrefix)_apm_agent_configuration": res.#elasticstack_apm_agent_configuration
	_#res: "\(#elasticstackPrefix)_elasticsearch_cluster_settings": res.#elasticstack_elasticsearch_cluster_settings
	_#res: "\(#elasticstackPrefix)_elasticsearch_component_template": res.#elasticstack_elasticsearch_component_template
	_#res: "\(#elasticstackPrefix)_elasticsearch_data_stream": res.#elasticstack_elasticsearch_data_stream
	_#res: "\(#elasticstackPrefix)_elasticsearch_data_stream_lifecycle": res.#elasticstack_elasticsearch_data_stream_lifecycle
	_#res: "\(#elasticstackPrefix)_elasticsearch_enrich_policy": res.#elasticstack_elasticsearch_enrich_policy
	_#res: "\(#elasticstackPrefix)_elasticsearch_index": res.#elasticstack_elasticsearch_index
	_#res: "\(#elasticstackPrefix)_elasticsearch_index_lifecycle": res.#elasticstack_elasticsearch_index_lifecycle
	_#res: "\(#elasticstackPrefix)_elasticsearch_index_template": res.#elasticstack_elasticsearch_index_template
	_#res: "\(#elasticstackPrefix)_elasticsearch_ingest_pipeline": res.#elasticstack_elasticsearch_ingest_pipeline
	_#res: "\(#elasticstackPrefix)_elasticsearch_logstash_pipeline": res.#elasticstack_elasticsearch_logstash_pipeline
	_#res: "\(#elasticstackPrefix)_elasticsearch_ml_anomaly_detection_job": res.#elasticstack_elasticsearch_ml_anomaly_detection_job
	_#res: "\(#elasticstackPrefix)_elasticsearch_ml_datafeed": res.#elasticstack_elasticsearch_ml_datafeed
	_#res: "\(#elasticstackPrefix)_elasticsearch_ml_datafeed_state": res.#elasticstack_elasticsearch_ml_datafeed_state
	_#res: "\(#elasticstackPrefix)_elasticsearch_ml_job_state": res.#elasticstack_elasticsearch_ml_job_state
	_#res: "\(#elasticstackPrefix)_elasticsearch_script": res.#elasticstack_elasticsearch_script
	_#res: "\(#elasticstackPrefix)_elasticsearch_security_api_key": res.#elasticstack_elasticsearch_security_api_key
	_#res: "\(#elasticstackPrefix)_elasticsearch_security_role": res.#elasticstack_elasticsearch_security_role
	_#res: "\(#elasticstackPrefix)_elasticsearch_security_role_mapping": res.#elasticstack_elasticsearch_security_role_mapping
	_#res: "\(#elasticstackPrefix)_elasticsearch_security_system_user": res.#elasticstack_elasticsearch_security_system_user
	_#res: "\(#elasticstackPrefix)_elasticsearch_security_user": res.#elasticstack_elasticsearch_security_user
	_#res: "\(#elasticstackPrefix)_elasticsearch_snapshot_lifecycle": res.#elasticstack_elasticsearch_snapshot_lifecycle
	_#res: "\(#elasticstackPrefix)_elasticsearch_snapshot_repository": res.#elasticstack_elasticsearch_snapshot_repository
	_#res: "\(#elasticstackPrefix)_elasticsearch_transform": res.#elasticstack_elasticsearch_transform
	_#res: "\(#elasticstackPrefix)_elasticsearch_watch": res.#elasticstack_elasticsearch_watch
	_#res: "\(#elasticstackPrefix)_fleet_agent_policy": res.#elasticstack_fleet_agent_policy
	_#res: "\(#elasticstackPrefix)_fleet_integration": res.#elasticstack_fleet_integration
	_#res: "\(#elasticstackPrefix)_fleet_integration_policy": res.#elasticstack_fleet_integration_policy
	_#res: "\(#elasticstackPrefix)_fleet_output": res.#elasticstack_fleet_output
	_#res: "\(#elasticstackPrefix)_fleet_server_host": res.#elasticstack_fleet_server_host
	_#res: "\(#elasticstackPrefix)_kibana_action_connector": res.#elasticstack_kibana_action_connector
	_#res: "\(#elasticstackPrefix)_kibana_alerting_rule": res.#elasticstack_kibana_alerting_rule
	_#res: "\(#elasticstackPrefix)_kibana_data_view": res.#elasticstack_kibana_data_view
	_#res: "\(#elasticstackPrefix)_kibana_import_saved_objects": res.#elasticstack_kibana_import_saved_objects
	_#res: "\(#elasticstackPrefix)_kibana_maintenance_window": res.#elasticstack_kibana_maintenance_window
	_#res: "\(#elasticstackPrefix)_kibana_security_detection_rule": res.#elasticstack_kibana_security_detection_rule
	_#res: "\(#elasticstackPrefix)_kibana_security_role": res.#elasticstack_kibana_security_role
	_#res: "\(#elasticstackPrefix)_kibana_slo": res.#elasticstack_kibana_slo
	_#res: "\(#elasticstackPrefix)_kibana_space": res.#elasticstack_kibana_space
	_#res: "\(#elasticstackPrefix)_kibana_synthetics_monitor": res.#elasticstack_kibana_synthetics_monitor
	_#res: "\(#elasticstackPrefix)_kibana_synthetics_parameter": res.#elasticstack_kibana_synthetics_parameter
	_#res: "\(#elasticstackPrefix)_kibana_synthetics_private_location": res.#elasticstack_kibana_synthetics_private_location

}
