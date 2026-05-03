package res

import "list"

#google_discovery_engine_data_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_data_connector")
	close({
		action_config?: matchN(1, [#action_config, list.MaxItems(1) & [...#action_config]])
		bap_config?: matchN(1, [#bap_config, list.MaxItems(1) & [...#bap_config]])
		destination_configs?: matchN(1, [#destination_configs, [...#destination_configs]])
		entities?: matchN(1, [#entities, [...#entities]])
		timeouts?: #timeouts

		// State of the action connector. This reflects whether the action
		// connector
		// is initializing, active or has encountered errors. The possible
		// value can be:
		// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING',
		// 'WARNING',
		// 'INITIALIZATION_FAILED', 'UPDATING'.
		action_state?: string

		// Indicates whether full syncs are paused for this connector
		auto_run_disabled?: bool

		// User actions that must be completed before the connector can
		// start syncing data.
		// The possible values can be: 'ALLOWLIST_STATIC_IP',
		// 'ALLOWLIST_IN_SERVICE_ATTACHMENT'.
		blocking_reasons?: [...string]

		// The display name of the Collection.
		// Should be human readable, used to display collections in the
		// Console
		// Dashboard. UTF-8 encoded string with limit of 1024 characters.
		collection_display_name!: string

		// The ID to use for the Collection, which will become the final
		// component
		// of the Collection's resource name. A new Collection is created
		// as
		// part of the DataConnector setup. DataConnector is a singleton
		// resource under Collection, managing all DataStores of the
		// Collection.
		// This field must conform to
		// [RFC-1034](https://tools.ietf.org/html/rfc1034)
		// standard with a length limit of 63 characters. Otherwise, an
		// INVALID_ARGUMENT error is returned.
		collection_id!: string

		// The modes enabled for this connector. The possible value can
		// be:
		// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
		// 'EUA', 'FEDERATED_AND_EUA'.
		connector_modes?: [...string]

		// The type of connector. Each source can only map to one type.
		// For example, salesforce, confluence and jira have THIRD_PARTY
		// connector
		// type. It is not mutable once set by system. The possible value
		// can be:
		// 'CONNECTOR_TYPE_UNSPECIFIED', 'THIRD_PARTY', 'GCP_FHIR',
		// 'BIG_QUERY',
		// 'GCS', 'GOOGLE_MAIL', 'GOOGLE_CALENDAR', 'GOOGLE_DRIVE',
		// 'NATIVE_CLOUD_IDENTITY', 'THIRD_PARTY_FEDERATED',
		// 'THIRD_PARTY_EUA', 'GCNV'.
		connector_type?: string

		// Timestamp when the DataConnector was created.
		create_time?: string

		// The identifier for the data source.
		// This is a partial list of supported connectors. Please refer to
		// the
		// [documentation](https://docs.cloud.google.com/gemini/enterprise/docs/connectors/introduction-to-connectors-and-data-stores)
		// for the full list of connectors.
		//
		// Supported first-party connectors include:
		//
		// * 'bigquery'
		// * 'gcp_fhir'
		// * 'google_mail'
		// * 'google_drive'
		// * 'google_calendar'
		// * 'google_chat'
		//
		// Supported third-party connectors include:
		// Generally available (GA) connectors:
		//
		// * 'onedrive'
		// * 'outlook'
		// * 'confluence'
		// * 'jira'
		// * 'servicenow'
		// * 'sharepoint'
		//
		// Preview connectors:
		//
		// * 'asana'
		// * 'azure_active_directory'
		// * 'box'
		// * 'canva'
		// * 'confluence_server'
		// * 'custom_connector'
		// * 'docusign'
		// * 'dropbox'
		// * 'dynamics365'
		// * 'github'
		// * 'gitlab'
		// * 'hubspot'
		// * 'jira_server'
		// * 'linear'
		// * 'native_cloud_identity'
		// * 'notion'
		// * 'okta'
		// * 'pagerduty'
		// * 'peoplesoft'
		// * 'salesforce'
		// * 'shopify'
		// * 'slack'
		// * 'snowflake'
		// * 'teams'
		// * 'trello'
		// * 'workday'
		// * 'zendesk'
		data_source!: string

		// The version of the data source. For example, '3' for Jira v3.
		data_source_version?: number

		// The errors from initialization or from the latest connector
		// run.
		errors?: [...close({
			code?:    number
			message?: string
		})]
		id?: string

		// The refresh interval specifically for incremental data syncs.
		// If unset,
		// incremental syncs will use the default from env, set to 3hrs.
		// The minimum is 30 minutes and maximum is 7 days. Applicable to
		// only 3P
		// connectors. When the refresh interval is
		// set to the same value as the incremental refresh interval,
		// incremental
		// sync will be disabled.
		incremental_refresh_interval?: string

		// Indicates whether incremental syncs are paused for this
		// connector.
		incremental_sync_disabled?: bool

		// Params needed to access the source in the format of json
		// string.
		json_params?: string

		// The KMS key to be used to protect the DataStores managed by
		// this connector.
		// Must be set for requests that need to comply with CMEK Org
		// Policy
		// protections.
		// If this field is set and processed successfully, the DataStores
		// created by
		// this connector will be protected by the KMS key.
		kms_key_name?: string

		// For periodic connectors only, the last time a data sync was
		// completed.
		last_sync_time?: string

		// The most recent timestamp when this [DataConnector][] was
		// paused,
		// affecting all functionalities such as data synchronization.
		// Pausing a connector has the following effects:
		// - All functionalities, including data synchronization, are
		// halted.
		// - Any ongoing data synchronization job will be canceled.
		// - No future data synchronization runs will be scheduled nor can
		// be
		// triggered.
		latest_pause_time?: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The full resource name of the Data Connector.
		// Format: 'projects/*/locations/*/collections/*/dataConnector'.
		name?: string

		// Params needed to access the source in the format of
		// String-to-String (Key, Value) pairs.
		params?: [string]: string

		// The tenant project ID associated with private connectivity
		// connectors.
		// This project must be allowlisted by in order for the connector
		// to function.
		private_connectivity_project_id?: string
		project?:                         string

		// The real-time sync state. The possible values can be:
		// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING',
		// 'WARNING',
		// 'INITIALIZATION_FAILED', 'UPDATING'.
		realtime_state?: string

		// The refresh interval for data sync. If duration is set to 0,
		// the data will
		// be synced in real time. The streaming feature is not supported
		// yet. The
		// minimum is 30 minutes and maximum is 7 days. When the refresh
		// interval is
		// set to the same value as the incremental refresh interval,
		// incremental
		// sync will be disabled.
		refresh_interval!: string

		// The state of connector. The possible value can be:
		// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING',
		// 'WARNING',
		// 'INITIALIZATION_FAILED', 'UPDATING'.
		state?: string

		// The static IP addresses used by this connector.
		static_ip_addresses?: [...string]

		// Whether customer has enabled static IP addresses for this
		// connector.
		static_ip_enabled?: bool

		// The data synchronization mode supported by the data connector.
		// The possible value can be:
		// 'PERIODIC', 'STREAMING'.
		sync_mode?: string

		// Timestamp when the DataConnector was updated.
		update_time?: string
	})

	#action_config: close({
		// Params needed to configure the actions in the format of
		// String-to-String (Key, Value) pairs. Contains connection
		// credentials and configuration for the action connector.
		action_params?: [string]: string

		// Whether to create a BAP (Business Application Platform)
		// connection
		// for this action connector.
		create_bap_connection?: bool

		// Whether the action connector is fully configured. Set by the
		// system
		// after the action configuration is validated.
		is_action_configured?: bool
	})

	#bap_config: close({
		// The list of enabled actions for this connector. Supported
		// values include: 'create_issue', 'update_issue',
		// 'change_issue_status', 'create_comment', 'update_comment',
		// 'upload_attachment'.
		enabled_actions?: [...string]

		// The connector modes supported by the BAP configuration.
		// The possible values include: 'ACTIONS'.
		supported_connector_modes?: [...string]
	})

	#destination_configs: close({
		destinations?: matchN(1, [_#defs."/$defs/destination_configs/$defs/destinations", [..._#defs."/$defs/destination_configs/$defs/destinations"]])

		// The key of the destination configuration, for example 'url'.
		key?: string

		// Additional parameters for this destination config in structured
		// json format.
		params?: string
	})

	#entities: close({
		// The full resource name of the associated data store for the
		// source
		// entity.
		// Format: 'projects/*/locations/*/collections/*/dataStores/*'.
		// When the connector is initialized by the
		// DataConnectorService.SetUpDataConnector
		// method, a DataStore is automatically created for each source
		// entity.
		data_store?: string

		// The name of the entity. Supported values by data source:
		// * Salesforce: 'Lead', 'Opportunity', 'Contact', 'Account',
		// 'Case', 'Contract', 'Campaign'
		// * Jira: project, issue, attachment, comment, worklog
		// * Confluence: 'Content', 'Space'
		entity_name?: string

		// Attributes for indexing.
		// Key: Field name.
		// Value: The key property to map a field to, such as 'title', and
		// 'description'. Supported key properties:
		// * 'title': The title for data record. This would be displayed
		// on search
		// results.
		// * 'description': The description for data record. This would be
		// displayed
		// on search results.
		key_property_mappings?: [string]: string

		// The parameters for the entity to facilitate data ingestion.
		params?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destination_configs/$defs/destinations": close({
		// The host of the destination, for example
		// 'https://example.atlassian.net'.
		host?: string

		// Target port number accepted by the destination.
		port?: number
	})
}
