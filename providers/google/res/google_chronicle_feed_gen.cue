package res

import "list"

#google_chronicle_feed: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_feed")
	close({
		details?: matchN(1, [#details, list.MaxItems(1) & [...#details]])
		failure_details?: matchN(1, [#failure_details, list.MaxItems(1) & [...#failure_details]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Customer-provided feed name.
		display_name?: string

		// Whether the feed is enabled.
		enabled?: bool

		// Details about the most recent failure when feed state is
		// FAILED.
		failure_msg?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		feed?: string

		// Output only. The service account used by Chronicle to ingest
		// data from Cloud Storage. This is only available when the feed
		// source type is GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN or
		// GOOGLE_CLOUD_STORAGE.
		feed_service_account?: string
		id?:                   string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		instance!: string

		// Latest timestamp when the transfer was successful for the feed.
		last_feed_initiation_time?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// The resource name of the feed.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/feeds/{feed}
		name?:    string
		project?: string

		// Whether this feed can be updated or deleted.
		read_only?: bool

		// Reference ID, this field will contain the legacy id of the
		// feed.
		reference_id?: string

		// Output only. The secret generated for the feed. This is only
		// available when the feed source type is
		// HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE.
		secret?: string

		// The state of the feed (e.g., ACTIVE, INACTIVE).
		state?: string

		// Unique identifier for the feed.
		uid?: string
	})

	#details: close({
		amazon_kinesis_firehose_settings?: matchN(1, [_#defs."/$defs/details/$defs/amazon_kinesis_firehose_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_kinesis_firehose_settings"]])
		amazon_s3_settings?: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_s3_settings"]])
		amazon_s3_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_s3_v2_settings"]])
		amazon_sqs_settings?: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_sqs_settings"]])
		amazon_sqs_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_sqs_v2_settings"]])
		anomali_settings?: matchN(1, [_#defs."/$defs/details/$defs/anomali_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/anomali_settings"]])
		aws_ec2_hosts_settings?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_hosts_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_hosts_settings"]])
		aws_ec2_instances_settings?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_instances_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_instances_settings"]])
		aws_ec2_vpcs_settings?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_vpcs_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_vpcs_settings"]])
		aws_iam_settings?: matchN(1, [_#defs."/$defs/details/$defs/aws_iam_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_iam_settings"]])
		azure_ad_audit_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_audit_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_audit_settings"]])
		azure_ad_context_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_context_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_context_settings"]])
		azure_ad_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_settings"]])
		azure_blob_store_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_blob_store_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_blob_store_settings"]])
		azure_blob_store_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_blob_store_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_blob_store_v2_settings"]])
		azure_event_hub_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_event_hub_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_event_hub_settings"]])
		azure_mdm_intune_settings?: matchN(1, [_#defs."/$defs/details/$defs/azure_mdm_intune_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_mdm_intune_settings"]])
		cloud_passage_settings?: matchN(1, [_#defs."/$defs/details/$defs/cloud_passage_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/cloud_passage_settings"]])
		cortex_xdr_settings?: matchN(1, [_#defs."/$defs/details/$defs/cortex_xdr_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/cortex_xdr_settings"]])
		crowdstrike_alerts_settings?: matchN(1, [_#defs."/$defs/details/$defs/crowdstrike_alerts_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/crowdstrike_alerts_settings"]])
		crowdstrike_detects_settings?: matchN(1, [_#defs."/$defs/details/$defs/crowdstrike_detects_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/crowdstrike_detects_settings"]])
		dummy_log_type_settings?: matchN(1, [_#defs."/$defs/details/$defs/dummy_log_type_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/dummy_log_type_settings"]])
		duo_auth_settings?: matchN(1, [_#defs."/$defs/details/$defs/duo_auth_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/duo_auth_settings"]])
		duo_user_context_settings?: matchN(1, [_#defs."/$defs/details/$defs/duo_user_context_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/duo_user_context_settings"]])
		fox_it_stix_settings?: matchN(1, [_#defs."/$defs/details/$defs/fox_it_stix_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/fox_it_stix_settings"]])
		gcs_settings?: matchN(1, [_#defs."/$defs/details/$defs/gcs_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/gcs_settings"]])
		gcs_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/gcs_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/gcs_v2_settings"]])
		google_cloud_identity_device_users_settings?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings"]])
		google_cloud_identity_devices_settings?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_devices_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_devices_settings"]])
		google_cloud_storage_event_driven_settings?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_storage_event_driven_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_storage_event_driven_settings"]])
		http_settings?: matchN(1, [_#defs."/$defs/details/$defs/http_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/http_settings"]])
		https_push_amazon_kinesis_firehose_settings?: matchN(1, [_#defs."/$defs/details/$defs/https_push_amazon_kinesis_firehose_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/https_push_amazon_kinesis_firehose_settings"]])
		https_push_google_cloud_pubsub_settings?: matchN(1, [_#defs."/$defs/details/$defs/https_push_google_cloud_pubsub_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/https_push_google_cloud_pubsub_settings"]])
		https_push_webhook_settings?: matchN(1, [_#defs."/$defs/details/$defs/https_push_webhook_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/https_push_webhook_settings"]])
		imperva_waf_settings?: matchN(1, [_#defs."/$defs/details/$defs/imperva_waf_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/imperva_waf_settings"]])
		mandiant_ioc_settings?: matchN(1, [_#defs."/$defs/details/$defs/mandiant_ioc_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mandiant_ioc_settings"]])
		microsoft_graph_alert_settings?: matchN(1, [_#defs."/$defs/details/$defs/microsoft_graph_alert_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/microsoft_graph_alert_settings"]])
		microsoft_security_center_alert_settings?: matchN(1, [_#defs."/$defs/details/$defs/microsoft_security_center_alert_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/microsoft_security_center_alert_settings"]])
		mimecast_mail_settings?: matchN(1, [_#defs."/$defs/details/$defs/mimecast_mail_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mimecast_mail_settings"]])
		mimecast_mail_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/mimecast_mail_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mimecast_mail_v2_settings"]])
		netskope_alert_settings?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/netskope_alert_settings"]])
		netskope_alert_v2_settings?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_v2_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/netskope_alert_v2_settings"]])
		office365_settings?: matchN(1, [_#defs."/$defs/details/$defs/office365_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/office365_settings"]])
		okta_settings?: matchN(1, [_#defs."/$defs/details/$defs/okta_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/okta_settings"]])
		okta_user_context_settings?: matchN(1, [_#defs."/$defs/details/$defs/okta_user_context_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/okta_user_context_settings"]])
		pan_ioc_settings?: matchN(1, [_#defs."/$defs/details/$defs/pan_ioc_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/pan_ioc_settings"]])
		pan_prisma_cloud_settings?: matchN(1, [_#defs."/$defs/details/$defs/pan_prisma_cloud_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/pan_prisma_cloud_settings"]])
		proofpoint_mail_settings?: matchN(1, [_#defs."/$defs/details/$defs/proofpoint_mail_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/proofpoint_mail_settings"]])
		proofpoint_on_demand_settings?: matchN(1, [_#defs."/$defs/details/$defs/proofpoint_on_demand_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/proofpoint_on_demand_settings"]])
		pubsub_settings?: matchN(1, [_#defs."/$defs/details/$defs/pubsub_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/pubsub_settings"]])
		qualys_scan_settings?: matchN(1, [_#defs."/$defs/details/$defs/qualys_scan_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/qualys_scan_settings"]])
		qualys_vm_settings?: matchN(1, [_#defs."/$defs/details/$defs/qualys_vm_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/qualys_vm_settings"]])
		rapid7_insight_settings?: matchN(1, [_#defs."/$defs/details/$defs/rapid7_insight_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/rapid7_insight_settings"]])
		recorded_future_ioc_settings?: matchN(1, [_#defs."/$defs/details/$defs/recorded_future_ioc_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/recorded_future_ioc_settings"]])
		rh_isac_ioc_settings?: matchN(1, [_#defs."/$defs/details/$defs/rh_isac_ioc_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/rh_isac_ioc_settings"]])
		salesforce_settings?: matchN(1, [_#defs."/$defs/details/$defs/salesforce_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/salesforce_settings"]])
		sentinelone_alert_settings?: matchN(1, [_#defs."/$defs/details/$defs/sentinelone_alert_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/sentinelone_alert_settings"]])
		service_now_cmdb_settings?: matchN(1, [_#defs."/$defs/details/$defs/service_now_cmdb_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/service_now_cmdb_settings"]])
		sftp_settings?: matchN(1, [_#defs."/$defs/details/$defs/sftp_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/sftp_settings"]])
		symantec_event_export_settings?: matchN(1, [_#defs."/$defs/details/$defs/symantec_event_export_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/symantec_event_export_settings"]])
		thinkst_canary_settings?: matchN(1, [_#defs."/$defs/details/$defs/thinkst_canary_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/thinkst_canary_settings"]])
		threat_connect_ioc_settings?: matchN(1, [_#defs."/$defs/details/$defs/threat_connect_ioc_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/threat_connect_ioc_settings"]])
		threat_connect_ioc_v3_settings?: matchN(1, [_#defs."/$defs/details/$defs/threat_connect_ioc_v3_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/threat_connect_ioc_v3_settings"]])
		trellix_hx_alerts_settings?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_alerts_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_alerts_settings"]])
		trellix_hx_bulk_acqs_settings?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings"]])
		trellix_hx_hosts_settings?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_hosts_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_hosts_settings"]])
		webhook_settings?: matchN(1, [_#defs."/$defs/details/$defs/webhook_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/webhook_settings"]])
		workday_settings?: matchN(1, [_#defs."/$defs/details/$defs/workday_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workday_settings"]])
		workspace_activity_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_activity_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_activity_settings"]])
		workspace_alerts_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_alerts_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_alerts_settings"]])
		workspace_chrome_os_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_chrome_os_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_chrome_os_settings"]])
		workspace_groups_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_groups_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_groups_settings"]])
		workspace_mobile_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_mobile_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_mobile_settings"]])
		workspace_privileges_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_privileges_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_privileges_settings"]])
		workspace_users_settings?: matchN(1, [_#defs."/$defs/details/$defs/workspace_users_settings", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_users_settings"]])

		// The asset namespace to apply to all logs ingested through this
		// feed.
		asset_namespace?: string

		// Source Type of the feed.
		// Possible values:
		// GOOGLE_CLOUD_STORAGE
		// HTTP
		// SFTP
		// AMAZON_S3
		// AZURE_BLOBSTORE
		// API
		// AMAZON_SQS
		// PUBSUB
		// AMAZON_KINESIS_FIREHOSE
		// WEBHOOK
		// HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB
		// HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE
		// HTTPS_PUSH_WEBHOOK
		// AZURE_EVENT_HUB
		// GOOGLE_CLOUD_STORAGE_V2
		// AMAZON_S3_V2
		// AMAZON_SQS_V2
		// AZURE_BLOBSTORE_V2
		// GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN Possible values:
		// ["GOOGLE_CLOUD_STORAGE", "HTTP", "SFTP", "AMAZON_S3",
		// "AZURE_BLOBSTORE", "API", "AMAZON_SQS", "PUBSUB",
		// "AMAZON_KINESIS_FIREHOSE", "WEBHOOK",
		// "HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB",
		// "HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE", "HTTPS_PUSH_WEBHOOK",
		// "AZURE_EVENT_HUB", "GOOGLE_CLOUD_STORAGE_V2", "AMAZON_S3_V2",
		// "AMAZON_SQS_V2", "AZURE_BLOBSTORE_V2",
		// "GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN"]
		feed_source_type?: string

		// The ingestion metadata labels to apply to all logs ingested
		// through this
		// feed, and the resulting normalized data.
		labels?: [string]: string

		// LogType.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/logTypes/{log_type}
		log_type!: string

		// The status of the feed's migration to STS.
		// Possible values:
		// NOT_READY
		// READY
		// AUTH_RECONFIG_REQUIRED
		sts_migration_readiness?: string
	})

	#failure_details: close({
		// error_action contains the user action prescribed for
		// remediation of feed
		// error.
		error_action?: string

		// error_cause contains the information regarding the failure
		// cause.
		error_cause?: string

		// error_code contains the error code for the feed. The field is
		// populated for
		// the feeds with failed status.
		error_code?: string

		// http_error_code contains the HTTP error code for the feed
		// failure.
		// feed transfer failure may or may not result in http error code.
		http_error_code?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/details/$defs/amazon_kinesis_firehose_settings": close({})

	_#defs: "/$defs/details/$defs/amazon_s3_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_s3_settings/$defs/authentication"]])

		// S3 URI.
		s3_uri!: string

		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option!: string

		// Possible values:
		// FILES
		// FOLDERS
		// FOLDERS_RECURSIVE
		source_type!: string
	})

	_#defs: "/$defs/details/$defs/amazon_s3_settings/$defs/authentication": close({
		// Access key ID. Used when using access key auth.
		access_key_id?: string

		// Client ID. Used when using OAuth auth.
		client_id?: string

		// Client secret. Used when using OAuth auth.
		client_secret?: string

		// Refresh URI. Used when using OAuth auth.
		refresh_uri?: string

		// Possible values:
		// US_EAST_1
		// US_EAST_2
		// US_WEST_1
		// US_WEST_2
		// US_GOV_CLOUD
		// US_GOV_EAST_1
		// EU_WEST_1
		// EU_WEST_2
		// EU_WEST_3
		// EU_CENTRAL_1
		// EU_NORTH_1
		// EU_SOUTH_1
		// AP_SOUTH_1
		// AP_SOUTHEAST_1
		// AP_SOUTHEAST_2
		// AP_SOUTHEAST_3
		// AP_NORTHEAST_1
		// AP_NORTHEAST_2
		// AP_NORTHEAST_3
		// AP_EAST_1
		// SA_EAST_1
		// CN_NORTH_1
		// CN_NORTHWEST_1
		// CA_CENTRAL_1
		// AF_SOUTH_1
		// ME_SOUTH_1
		// AP_SOUTH_2
		// AP_SOUTHEAST_4
		// CA_WEST_1
		// EU_SOUTH_2
		// EU_CENTRAL_2
		// IL_CENTRAL_1
		// ME_CENTRAL_1
		region!: string

		// Secret access key. Used when using access key auth.
		secret_access_key?: string
	})

	_#defs: "/$defs/details/$defs/amazon_s3_v2_settings": close({
		authentication!: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication"]])

		// SA that will read data, this is Storage Transfer Service SA of
		// Customer's
		// Tenancy Project.
		chronicle_service_account?: string

		// Maximum File Age to ingest in days.
		max_lookback_days?: number

		// S3 URI.
		s3_uri!: string

		// Possible values:
		// NEVER
		// ON_SUCCESS
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication": close({
		access_key_secret_auth?: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/access_key_secret_auth", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/access_key_secret_auth"]])
		aws_iam_role_auth?: matchN(1, [_#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/aws_iam_role_auth", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/aws_iam_role_auth"]])
	})

	_#defs: "/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/access_key_secret_auth": close({
		// Access Key ID for an AWS account (a 20-character, alphanumeric
		// string).
		access_key_id!: string

		// Secret Access Key for an AWS account (a 40-character string).
		secret_access_key!: string
	})

	_#defs: "/$defs/details/$defs/amazon_s3_v2_settings/$defs/authentication/$defs/aws_iam_role_auth": close({
		// AWS IAM Role for Identity Federation.
		aws_iam_role_arn?: string

		// Subject ID to use for S3.
		subject_id?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication"]])

		// Account number of the owner of the queue.
		account_number?: string

		// Name of the queue.
		queue?: string

		// Possible values:
		// US_EAST_1
		// US_EAST_2
		// US_WEST_1
		// US_WEST_2
		// US_GOV_CLOUD
		// US_GOV_EAST_1
		// EU_WEST_1
		// EU_WEST_2
		// EU_WEST_3
		// EU_CENTRAL_1
		// EU_NORTH_1
		// EU_SOUTH_1
		// AP_SOUTH_1
		// AP_SOUTHEAST_1
		// AP_SOUTHEAST_2
		// AP_SOUTHEAST_3
		// AP_NORTHEAST_1
		// AP_NORTHEAST_2
		// AP_NORTHEAST_3
		// AP_EAST_1
		// SA_EAST_1
		// CN_NORTH_1
		// CN_NORTHWEST_1
		// CA_CENTRAL_1
		// AF_SOUTH_1
		// ME_SOUTH_1
		// AP_SOUTH_2
		// AP_SOUTHEAST_4
		// CA_WEST_1
		// EU_SOUTH_2
		// EU_CENTRAL_2
		// IL_CENTRAL_1
		// ME_CENTRAL_1
		region?: string

		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_settings/$defs/authentication": close({
		additional_s3_access_key_secret_auth?: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/additional_s3_access_key_secret_auth", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/additional_s3_access_key_secret_auth"]])
		sqs_access_key_secret_auth?: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/sqs_access_key_secret_auth", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/sqs_access_key_secret_auth"]])
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/additional_s3_access_key_secret_auth": close({
		// Access key ID.
		access_key_id?: string

		// Secret access key.
		secret_access_key?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_settings/$defs/authentication/$defs/sqs_access_key_secret_auth": close({
		// Access key ID.
		access_key_id?: string

		// Secret access key.
		secret_access_key?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_v2_settings": close({
		authentication!: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication"]])

		// SA that will read data, this is Storage Transfer Service SA of
		// Customer's
		// Tenancy Project.
		chronicle_service_account?: string

		// Maximum File Age to ingest in days.
		max_lookback_days?: number

		// Amazon Resource Name(ARN) of the queue.
		queue!: string

		// S3 URI.
		s3_uri!: string

		// Possible values:
		// NEVER
		// ON_SUCCESS
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication": close({
		aws_iam_role_auth!: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/aws_iam_role_auth", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/aws_iam_role_auth"]])
		sqs_v2_access_key_secret_auth!: matchN(1, [_#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/sqs_v2_access_key_secret_auth", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/sqs_v2_access_key_secret_auth"]])
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/aws_iam_role_auth": close({
		// AWS IAM Role for Identity Federation.
		aws_iam_role_arn?: string

		// Subject ID to use for SQS.
		subject_id?: string
	})

	_#defs: "/$defs/details/$defs/amazon_sqs_v2_settings/$defs/authentication/$defs/sqs_v2_access_key_secret_auth": close({
		// Access key ID of the S3 bucket. Ex: AKIABCDEFGHIJKL.
		access_key_id?: string

		// Secret access key to access the S3 bucket.
		secret_access_key?: string
	})

	_#defs: "/$defs/details/$defs/anomali_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/anomali_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/anomali_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/anomali_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/aws_ec2_hosts_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_hosts_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_hosts_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/aws_ec2_hosts_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/aws_ec2_instances_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_instances_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_instances_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/aws_ec2_instances_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/aws_ec2_vpcs_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/aws_ec2_vpcs_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_ec2_vpcs_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/aws_ec2_vpcs_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/aws_iam_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/aws_iam_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/aws_iam_settings/$defs/authentication"]])

		// Supported AWS IAM api type.
		// Possible values:
		// USERS
		// ROLES
		// GROUPS
		api_type?: string
	})

	_#defs: "/$defs/details/$defs/aws_iam_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_audit_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_audit_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_audit_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_audit_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_context_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_context_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_context_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Whether to retrieve device information in user context.
		retrieve_devices?: bool

		// Whether to retrieve group information in user context.
		retrieve_groups?: bool

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_context_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/azure_ad_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_ad_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/azure_ad_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/azure_blob_store_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/azure_blob_store_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_blob_store_settings/$defs/authentication"]])

		// Azure URI.
		azure_uri?: string

		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option?: string

		// Possible values:
		// FILES
		// FOLDERS
		// FOLDERS_RECURSIVE
		source_type?: string
	})

	_#defs: "/$defs/details/$defs/azure_blob_store_settings/$defs/authentication": close({
		// SAS Token.
		sas_token?: string

		// Shared Key.
		shared_key?: string
	})

	_#defs: "/$defs/details/$defs/azure_blob_store_v2_settings": close({
		authentication!: matchN(1, [_#defs."/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication"]])

		// Azure URI.
		azure_uri!: string

		// SA that will read data, this is Storage Transfer Service SA of
		// Customer's
		// Tenancy Project.
		chronicle_service_account?: string

		// Maximum File Age to ingest in days.
		max_lookback_days?: number

		// Possible values:
		// NEVER
		// ON_SUCCESS
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication": close({
		azure_v2_workload_identity_federation!: matchN(1, [_#defs."/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication/$defs/azure_v2_workload_identity_federation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication/$defs/azure_v2_workload_identity_federation"]])

		// Access Key also known as shared key.
		access_key!: string

		// SAS Token.
		sas_token!: string
	})

	_#defs: "/$defs/details/$defs/azure_blob_store_v2_settings/$defs/authentication/$defs/azure_v2_workload_identity_federation": close({
		// OAuth client ID.
		client_id!: string

		// Subject ID of the Azure subscription.
		subject_id!: string

		// Tenant ID.
		tenant_id!: string
	})

	_#defs: "/$defs/details/$defs/azure_event_hub_settings": close({
		// SAS token
		azure_sas_token?: string

		// Blob store connection string for authentication.
		azure_storage_connection_string?: string

		// Blob storage container name.
		azure_storage_container?: string

		// Event hub consumer group to read from.
		consumer_group!: string

		// Event hub connection string for authentication.
		event_hub_connection_string!: string

		// Event hub namespace
		event_hub_namespace?: string

		// Event hub to read from.
		name!: string
	})

	_#defs: "/$defs/details/$defs/azure_mdm_intune_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/azure_mdm_intune_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/azure_mdm_intune_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/azure_mdm_intune_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/cloud_passage_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/cloud_passage_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/cloud_passage_settings/$defs/authentication"]])

		// Event types filter for the events API.
		event_types?: [...string]
	})

	_#defs: "/$defs/details/$defs/cloud_passage_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/cortex_xdr_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/cortex_xdr_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/cortex_xdr_settings/$defs/authentication"]])

		// API Endpoint.
		endpoint?: string

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/cortex_xdr_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/cortex_xdr_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/cortex_xdr_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/cortex_xdr_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/crowdstrike_alerts_settings": close({
		authentication!: matchN(1, [_#defs."/$defs/details/$defs/crowdstrike_alerts_settings/$defs/authentication", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/details/$defs/crowdstrike_alerts_settings/$defs/authentication"]])

		// API Hostname.
		hostname!: string

		// Ingestion Type.
		// Possible values:
		// BRING_ALL_ALERTS
		// BRING_ONLY_NEW_ALERTS
		ingestion_type?: string
	})

	_#defs: "/$defs/details/$defs/crowdstrike_alerts_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string

		// Token endpoint.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/crowdstrike_detects_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/crowdstrike_detects_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/crowdstrike_detects_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string

		// Ingestion Type.
		// Possible values:
		// BRING_ONLY_NEW_DETECTIONS
		// BRING_ALL_DETECTIONS
		ingestion_type?: string
	})

	_#defs: "/$defs/details/$defs/crowdstrike_detects_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string

		// Token endpoint.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/dummy_log_type_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/dummy_log_type_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/dummy_log_type_settings/$defs/authentication"]])

		// Full API Endpoint.
		api_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/dummy_log_type_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/dummy_log_type_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/dummy_log_type_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/dummy_log_type_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/duo_auth_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/duo_auth_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/duo_auth_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/duo_auth_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/duo_user_context_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/duo_user_context_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/duo_user_context_settings/$defs/authentication"]])

		// API hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/duo_user_context_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/fox_it_stix_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/fox_it_stix_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/fox_it_stix_settings/$defs/authentication"]])
		ssl?: matchN(1, [_#defs."/$defs/details/$defs/fox_it_stix_settings/$defs/ssl", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/fox_it_stix_settings/$defs/ssl"]])

		// Collection available at the poll service.
		collection?: string

		// TAXII poll service URI.
		poll_service_uri?: string
	})

	_#defs: "/$defs/details/$defs/fox_it_stix_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/fox_it_stix_settings/$defs/ssl": close({
		// The encoded private key. The string should be a private key in
		// PEM format,
		// and should include the begin header and end footer lines. It
		// may also
		// include newlines.
		//
		// Example:
		// -----BEGIN RSA PRIVATE KEY-----
		// Proc-Type: 4,ENCRYPTED
		// DEK-Info: DES-EDE3-CBC,F23074E02CF47304
		//
		//
		// -----END RSA PRIVATE KEY-----
		encoded_private_key?: string

		// The encoded SSL certificate. The string should be an SSL
		// certificate in
		// PEM format, and should include the begin header and end footer
		// lines. It
		// may also include newlines.
		//
		// Example:
		// -----BEGIN CERTIFICATE-----
		//
		// -----END CERTIFICATE-----
		ssl_certificate?: string
	})

	_#defs: "/$defs/details/$defs/gcs_settings": close({
		// Bucket URI.
		bucket_uri?: string

		// Service Account Chronicle will be using to pull data.
		chronicle_service_account?: string

		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option?: string

		// Possible values:
		// FILES
		// FOLDERS
		// FOLDERS_RECURSIVE
		source_type?: string
	})

	_#defs: "/$defs/details/$defs/gcs_v2_settings": close({
		// Google Cloud Storage Bucket URI for the feed.
		bucket_uri!: string

		// SA that will read data, this is Storage Transfer Service SA of
		// Customer's
		// Tenancy Project.
		chronicle_service_account?: string

		// Maximum File Age to ingest in days.
		max_lookback_days?: number

		// Possible values:
		// NEVER
		// ON_SUCCESS
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_device_users_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_device_users_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_devices_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication"]])

		// API Version
		api_version?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_identity_devices_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/google_cloud_storage_event_driven_settings": close({
		// Google Cloud Storage Bucket URI for the feed.
		bucket_uri!: string

		// SA that will read data, this is Storage Transfer Service SA of
		// Customer's
		// Tenancy Project.
		chronicle_service_account?: string

		// Maximum File Age to ingest in days.
		max_lookback_days?: number

		// Subscription name for pubsub topic.
		pubsub_subscription!: string

		// Possible values:
		// NEVER
		// ON_SUCCESS
		source_deletion_option?: string
	})

	_#defs: "/$defs/details/$defs/http_settings": close({
		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option?: string

		// Possible values:
		// FILES
		// FOLDERS
		// FOLDERS_RECURSIVE
		source_type?: string

		// HTTP URI.
		uri?: string
	})

	_#defs: "/$defs/details/$defs/https_push_amazon_kinesis_firehose_settings": close({
		// Delimiter to split on for the feed.
		split_delimiter?: string
	})

	_#defs: "/$defs/details/$defs/https_push_google_cloud_pubsub_settings": close({
		// Delimiter to split on for the feed.
		split_delimiter?: string
	})

	_#defs: "/$defs/details/$defs/https_push_webhook_settings": close({
		// Delimiter to split on for the feed.
		split_delimiter?: string
	})

	_#defs: "/$defs/details/$defs/imperva_waf_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/imperva_waf_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/imperva_waf_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/imperva_waf_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/imperva_waf_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/imperva_waf_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/imperva_waf_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/mandiant_ioc_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication"]])

		// time since when to start fetching the IOCs
		start_time?: string
	})

	_#defs: "/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/mandiant_ioc_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/microsoft_graph_alert_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/microsoft_graph_alert_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/microsoft_graph_alert_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/microsoft_graph_alert_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/microsoft_security_center_alert_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/microsoft_security_center_alert_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/microsoft_security_center_alert_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// API Hostname.
		hostname?: string

		// Subscription ID of the Microsoft security center alert settings
		// alert.
		subscription_id?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/microsoft_security_center_alert_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/mimecast_mail_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/mimecast_mail_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mimecast_mail_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/mimecast_mail_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/mimecast_mail_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/mimecast_mail_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/mimecast_mail_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/mimecast_mail_v2_settings": close({
		auth_credentials?: matchN(1, [_#defs."/$defs/details/$defs/mimecast_mail_v2_settings/$defs/auth_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/mimecast_mail_v2_settings/$defs/auth_credentials"]])
	})

	_#defs: "/$defs/details/$defs/mimecast_mail_v2_settings/$defs/auth_credentials": close({
		// Client ID.
		client_id?: string

		// Client Secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/netskope_alert_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/netskope_alert_settings/$defs/authentication"]])

		// Content type.
		content_type?: string

		// Feedname.
		feedname?: string

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/netskope_alert_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/netskope_alert_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/netskope_alert_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/netskope_alert_v2_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication"]])

		// Content Category.
		content_category?: string

		// Content type.
		content_types?: [...string]

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/netskope_alert_v2_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/office365_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/office365_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/office365_settings/$defs/authentication"]])

		// API Auth Endpoint.
		auth_endpoint?: string

		// Supported office 365 content type.
		// Possible values:
		// AUDIT_AZURE_ACTIVE_DIRECTORY
		// AUDIT_EXCHANGE
		// AUDIT_SHARE_POINT
		// AUDIT_GENERAL
		// DLP_ALL
		content_type?: string

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/office365_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string
	})

	_#defs: "/$defs/details/$defs/okta_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/okta_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/okta_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/okta_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/okta_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/okta_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/okta_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/okta_user_context_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/okta_user_context_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/okta_user_context_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string

		// Manager id reference field.
		manager_id_reference_field?: string
	})

	_#defs: "/$defs/details/$defs/okta_user_context_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/okta_user_context_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/okta_user_context_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/okta_user_context_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/pan_ioc_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/pan_ioc_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/pan_ioc_settings/$defs/authentication"]])

		// PAN IOC feed name.
		feed?: string

		// PAN IOC feed ID.
		feed_id?: string
	})

	_#defs: "/$defs/details/$defs/pan_ioc_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/pan_ioc_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/pan_ioc_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/pan_ioc_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/pan_prisma_cloud_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/pan_prisma_cloud_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/pan_prisma_cloud_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/pan_prisma_cloud_settings/$defs/authentication": close({
		// Password.
		password?: string

		// Username.
		user?: string
	})

	_#defs: "/$defs/details/$defs/proofpoint_mail_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/proofpoint_mail_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/proofpoint_mail_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/proofpoint_mail_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/proofpoint_on_demand_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication"]])

		// Cluster ID.
		cluster_id?: string
	})

	_#defs: "/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/proofpoint_on_demand_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/pubsub_settings": close({
		// Google Service Account Email.
		google_service_account_email?: string
	})

	_#defs: "/$defs/details/$defs/qualys_scan_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/qualys_scan_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/qualys_scan_settings/$defs/authentication"]])

		// Supported Qualys Scan api type.
		// Possible values:
		// SCAN_SUMMARY_OUTPUT
		// SCAN_COMPLIANCE_OUTPUT
		// SCAN_COMPLIANCE_CONTROL_OUTPUT
		api_type?: string

		// Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/qualys_scan_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/qualys_vm_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/qualys_vm_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/qualys_vm_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/qualys_vm_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/rapid7_insight_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/rapid7_insight_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/rapid7_insight_settings/$defs/authentication"]])

		// Rapid7 API endpoint. Should be "vulnerabilities" or "assets".
		endpoint?: string

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/rapid7_insight_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/rapid7_insight_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/rapid7_insight_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/rapid7_insight_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/recorded_future_ioc_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/recorded_future_ioc_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/rh_isac_ioc_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/rh_isac_ioc_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/rh_isac_ioc_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/rh_isac_ioc_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string

		// Token endpoint.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/salesforce_settings": close({
		oauth_jwt_credentials?: matchN(1, [_#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials"]])
		oauth_password_grant_auth?: matchN(1, [_#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_password_grant_auth", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_password_grant_auth"]])

		// API hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/salesforce_settings/$defs/oauth_jwt_credentials/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/salesforce_settings/$defs/oauth_password_grant_auth": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string

		// Password.
		password?: string

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string

		// Username.
		user?: string
	})

	_#defs: "/$defs/details/$defs/sentinelone_alert_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication"]])

		// Hostname of SentinelOne alert settings.
		hostname?: string

		// initialStartTime from when to fetch the alerts
		initial_start_time?: string

		// Is the customer subscribed to Alerts Api
		is_alert_api_subscribed?: bool
	})

	_#defs: "/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/sentinelone_alert_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/service_now_cmdb_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/service_now_cmdb_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/service_now_cmdb_settings/$defs/authentication"]])

		// Feedname.
		feedname?: string

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/service_now_cmdb_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/sftp_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/sftp_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/sftp_settings/$defs/authentication"]])

		// Possible values:
		// SOURCE_DELETION_NEVER
		// SOURCE_DELETION_ON_SUCCESS
		// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
		source_deletion_option?: string

		// Possible values:
		// FILES
		// FOLDERS
		// FOLDERS_RECURSIVE
		source_type?: string

		// SFTP URI.
		uri?: string
	})

	_#defs: "/$defs/details/$defs/sftp_settings/$defs/authentication": close({
		// Password. Used for username and password authentication.
		password?: string

		// Private key. Used for private key authentication.
		private_key?: string

		// Private key passphrase. Used for private key authentication.
		private_key_passphrase?: string

		// Username. Used for username and password authentication.
		username?: string
	})

	_#defs: "/$defs/details/$defs/symantec_event_export_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/symantec_event_export_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/symantec_event_export_settings/$defs/authentication"]])
	})

	_#defs: "/$defs/details/$defs/symantec_event_export_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client secret.
		client_secret?: string

		// Refresh token.
		refresh_token?: string

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/thinkst_canary_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/thinkst_canary_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/thinkst_canary_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string
	})

	_#defs: "/$defs/details/$defs/thinkst_canary_settings/$defs/authentication": close({
		header_key_values?: matchN(1, [_#defs."/$defs/details/$defs/thinkst_canary_settings/$defs/authentication/$defs/header_key_values", [..._#defs."/$defs/details/$defs/thinkst_canary_settings/$defs/authentication/$defs/header_key_values"]])
	})

	_#defs: "/$defs/details/$defs/thinkst_canary_settings/$defs/authentication/$defs/header_key_values": close({
		// Key.
		key?: string

		// Value.
		value?: string
	})

	_#defs: "/$defs/details/$defs/threat_connect_ioc_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/threat_connect_ioc_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/threat_connect_ioc_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string

		// Owners.
		owners?: [...string]
	})

	_#defs: "/$defs/details/$defs/threat_connect_ioc_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/threat_connect_ioc_v3_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/threat_connect_ioc_v3_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/threat_connect_ioc_v3_settings/$defs/authentication"]])

		// Fields
		fields?: [...string]

		// hostname.
		hostname?: string

		// Owners.
		owners?: [...string]

		// Schedule
		schedule?: number

		// ThreatConnect Query Language filter.
		tql_query?: string
	})

	_#defs: "/$defs/details/$defs/threat_connect_ioc_v3_settings/$defs/authentication": close({
		// Secret of the account identified by user_name.
		secret?: string

		// Username of an identity used for authentication.
		user?: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_alerts_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication"]])

		// Trellix HX Device URL.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		// Usually a device URL is in the form of either:
		// https://xxx.trellix.com/hx/id//
		// - or -
		// https://htapdeviceproxy.md.mandiant.net/dphb/hx//
		endpoint?: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication": close({
		msso?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/msso", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/msso"]])
		trellix_iam?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/trellix_iam", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/trellix_iam"]])
	})

	_#defs: "/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/msso": close({
		// The login api endpoint url.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		api_endpoint?: string

		// Password of the account identified by username.
		// There are no restrictions on the format of the password. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// password
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a password that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		password?: string

		// Username for MSSO authentication.
		// There are no restrictions on the format of the username. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// username
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a username that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		username?: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_alerts_settings/$defs/authentication/$defs/trellix_iam": close({
		// Client ID generated in Trellix IAM.
		// This is a unique identifier for the user that is generated in
		// Trellix IAM.
		// It has no default, specifically enforced min / max length or
		// character set.
		// It is assumed that the Client ID generated in Trellix IAM is
		// internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_id?: string

		// Secret associated with the Client ID.
		// This is the secret generated in Trellix IAM for the Client ID.
		// It has no
		// default, specifically enforced min / max length or character
		// set. It is
		// assumed that the secret generated in Trellix IAM is internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_secret?: string

		// OAUTH 2 scope to request for the authentication token.
		// This is the OAUTH 2 scope to request for the authentication
		// token. It has
		// no default, specifically enforced min / max length or character
		// set. It is
		// assumed that the scope provided is internally consistent with
		// Trellix IAM
		// authentication requirements / validation.
		scope?: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_bulk_acqs_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication"]])

		// Trellix HX Device URL.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		// Usually a device URL is in the form of either:
		// https://xxx.trellix.com/hx/id//
		// - or -
		// https://htapdeviceproxy.md.mandiant.net/dphb/hx//
		endpoint!: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication": close({
		msso?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/msso", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/msso"]])
		trellix_iam?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/trellix_iam", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/trellix_iam"]])
	})

	_#defs: "/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/msso": close({
		// The login api endpoint url.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		api_endpoint!: string

		// Password of the account identified by username.
		// There are no restrictions on the format of the password. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// password
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a password that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		password!: string

		// Username for MSSO authentication.
		// There are no restrictions on the format of the username. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// username
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a username that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		username!: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_bulk_acqs_settings/$defs/authentication/$defs/trellix_iam": close({
		// Client ID generated in Trellix IAM.
		// This is a unique identifier for the user that is generated in
		// Trellix IAM.
		// It has no default, specifically enforced min / max length or
		// character set.
		// It is assumed that the Client ID generated in Trellix IAM is
		// internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_id!: string

		// Secret associated with the Client ID.
		// This is the secret generated in Trellix IAM for the Client ID.
		// It has no
		// default, specifically enforced min / max length or character
		// set. It is
		// assumed that the secret generated in Trellix IAM is internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_secret!: string

		// OAUTH 2 scope to request for the authentication token.
		// This is the OAUTH 2 scope to request for the authentication
		// token. It has
		// no default, specifically enforced min / max length or character
		// set. It is
		// assumed that the scope provided is internally consistent with
		// Trellix IAM
		// authentication requirements / validation.
		scope!: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_hosts_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication"]])

		// Trellix HX Device URL.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		// Usually a device URL is in the form of either:
		// https://xxx.trellix.com/hx/id//
		// - or -
		// https://htapdeviceproxy.md.mandiant.net/dphb/hx//
		endpoint!: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication": close({
		msso?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/msso", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/msso"]])
		trellix_iam?: matchN(1, [_#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/trellix_iam", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/trellix_iam"]])
	})

	_#defs: "/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/msso": close({
		// The login api endpoint url.
		// This must be a valid URL with an http or https scheme. It has
		// no default.
		api_endpoint!: string

		// Password of the account identified by username.
		// There are no restrictions on the format of the password. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// password
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a password that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		password!: string

		// Username for MSSO authentication.
		// There are no restrictions on the format of the username. It has
		// no default,
		// specifically enforced min / max length or character set. The
		// username
		// will have been provided by an MSSO administrator and it is
		// assumed that
		// they have provided a username that is internally consistent
		// with MSSO
		// authentication requirements / validation.
		username!: string
	})

	_#defs: "/$defs/details/$defs/trellix_hx_hosts_settings/$defs/authentication/$defs/trellix_iam": close({
		// Client ID generated in Trellix IAM.
		// This is a unique identifier for the user that is generated in
		// Trellix IAM.
		// It has no default, specifically enforced min / max length or
		// character set.
		// It is assumed that the Client ID generated in Trellix IAM is
		// internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_id!: string

		// Secret associated with the Client ID.
		// This is the secret generated in Trellix IAM for the Client ID.
		// It has no
		// default, specifically enforced min / max length or character
		// set. It is
		// assumed that the secret generated in Trellix IAM is internally
		// consistent with Trellix IAM authentication requirements /
		// validation.
		client_secret!: string

		// OAUTH 2 scope to request for the authentication token.
		// This is the OAUTH 2 scope to request for the authentication
		// token. It has
		// no default, specifically enforced min / max length or character
		// set. It is
		// assumed that the scope provided is internally consistent with
		// Trellix IAM
		// authentication requirements / validation.
		scope!: string
	})

	_#defs: "/$defs/details/$defs/webhook_settings": close({})

	_#defs: "/$defs/details/$defs/workday_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workday_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workday_settings/$defs/authentication"]])

		// API Hostname.
		hostname?: string

		// Tenant ID.
		tenant_id?: string
	})

	_#defs: "/$defs/details/$defs/workday_settings/$defs/authentication": close({
		// Client ID.
		client_id?: string

		// Client Secret.
		client_secret?: string

		// Refresh Token.
		refresh_token?: string

		// The access token used to authenticate against Workday. This
		// field is called
		// "secret" to maintain backwards compatibility. Workday was
		// (only) configured
		// using username (which was unused) and secret (which is used as
		// the access
		// token). Either this field or all of the other OAuth fields
		// below must be
		// specified.
		secret?: string

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string

		// Username. This is unused: Workday feeds were originally
		// configured using a
		// username and secret authentication method, but only the secret
		// field was
		// used, and it was used to supply the OAuth access token.
		user?: string
	})

	_#defs: "/$defs/details/$defs/workspace_activity_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication"]])

		// Applications.
		applications?: [...string]

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_activity_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_activity_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_alerts_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication"]])

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_alerts_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_alerts_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_chrome_os_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication"]])

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_chrome_os_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_groups_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication"]])

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_groups_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_groups_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_mobile_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication"]])

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_mobile_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_mobile_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_privileges_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication"]])

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_privileges_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_privileges_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})

	_#defs: "/$defs/details/$defs/workspace_users_settings": close({
		authentication?: matchN(1, [_#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication"]])

		// Projection Type.
		// Possible values:
		// BASIC_PROJECTION
		// FULL_PROJECTION
		projection_type?: string

		// Customer ID.
		workspace_customer_id?: string
	})

	_#defs: "/$defs/details/$defs/workspace_users_settings/$defs/authentication": close({
		claims?: matchN(1, [_#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/claims", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/claims"]])
		rs_credentials?: matchN(1, [_#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/rs_credentials", list.MaxItems(1) & [..._#defs."/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/rs_credentials"]])

		// Token endpoint to get the OAuth token from.
		token_endpoint?: string
	})

	_#defs: "/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/claims": close({
		// Audience.
		audience?: string

		// Issuer. Usually the client_id.
		issuer?: string

		// Subject. Usually the email.
		subject?: string
	})

	_#defs: "/$defs/details/$defs/workspace_users_settings/$defs/authentication/$defs/rs_credentials": close({
		// Private key in PEM format.
		private_key?: string
	})
}
