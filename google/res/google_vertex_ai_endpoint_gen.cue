package res

import "list"

#google_vertex_ai_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_endpoint")
	close({
		// Output only. Timestamp when this Endpoint was created.
		create_time?: string

		// Output only. DNS of the dedicated endpoint. Will only be
		// populated if dedicatedEndpointEnabled is true. Format:
		// 'https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog'.
		dedicated_endpoint_dns?: string

		// If true, the endpoint will be exposed through a dedicated DNS
		// [Endpoint.dedicated_endpoint_dns]. Your request to the
		// dedicated DNS will be isolated from other users' traffic and
		// will have better performance and reliability. Note: Once you
		// enabled dedicated endpoint, you won't be able to send request
		// to the shared DNS {region}-aiplatform.googleapis.com. The
		// limitation will be removed soon.
		dedicated_endpoint_enabled?: bool

		// Output only. The models deployed in this Endpoint. To add or
		// remove DeployedModels use EndpointService.DeployModel and
		// EndpointService.UndeployModel respectively. Models can also be
		// deployed and undeployed using the [Cloud
		// Console](https://console.cloud.google.com/vertex-ai/).
		deployed_models?: [...close({
			automatic_resources?: [...close({
				max_replica_count?: number
				min_replica_count?: number
			})]
			create_time?: string
			dedicated_resources?: [...close({
				autoscaling_metric_specs?: [...close({
					metric_name?: string
					target?:      number
				})]
				machine_spec?: [...close({
					accelerator_count?: number
					accelerator_type?:  string
					machine_type?:      string
				})]
				max_replica_count?: number
				min_replica_count?: number
			})]
			display_name?:             string
			enable_access_logging?:    bool
			enable_container_logging?: bool
			id?:                       string
			model?:                    string
			model_version_id?:         string
			private_endpoints?: [...close({
				explain_http_uri?:   string
				health_http_uri?:    string
				predict_http_uri?:   string
				service_attachment?: string
			})]
			service_account?:  string
			shared_resources?: string
		})]

		// The description of the Endpoint.
		description?: string

		// Required. The display name of the Endpoint. The name can be up
		// to 128 characters long and can consist of any UTF-8
		// characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Used to perform consistent read-modify-write updates. If not
		// set, a blind "overwrite" update happens.
		etag?: string
		id?:   string

		// The labels with user-defined metadata to organize your
		// Endpoints. Label keys and values can be no longer than 64
		// characters (Unicode codepoints), can only contain lowercase
		// letters, numeric characters, underscores and dashes.
		// International characters are allowed. See
		// https://goo.gl/xmQnxf for more information and examples of
		// labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Output only. Resource name of the Model Monitoring job
		// associated with this Endpoint if monitoring is enabled by
		// CreateModelDeploymentMonitoringJob. Format:
		// 'projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}'
		model_deployment_monitoring_job?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		predict_request_response_logging_config?: matchN(1, [#predict_request_response_logging_config, list.MaxItems(1) & [...#predict_request_response_logging_config]])
		private_service_connect_config?: matchN(1, [#private_service_connect_config, list.MaxItems(1) & [...#private_service_connect_config]])
		timeouts?: #timeouts

		// The resource name of the Endpoint. The name must be numeric
		// with no leading zeros and can be at most 10 digits.
		name!: string

		// The full name of the Google Compute Engine
		// [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
		// to which the Endpoint should be peered. Private services
		// access must already be configured for the network. If left
		// unspecified, the Endpoint is not peered with any network. Only
		// one of the fields, network or enable_private_service_connect,
		// can be set.
		// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert):
		// 'projects/{project}/global/networks/{network}'. Where
		// '{project}' is a project number, as in '12345', and
		// '{network}' is network name. Only one of the fields, 'network'
		// or 'privateServiceConnectConfig', can be set.
		network?: string
		project?: string

		// The region for the resource
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A map from a DeployedModel's id to the percentage of this
		// Endpoint's traffic that should be forwarded to that
		// DeployedModel.
		// If a DeployedModel's id is not listed in this map, then it
		// receives no traffic.
		// The traffic percentage values must add up to 100, or map must
		// be empty if the Endpoint is to not accept any traffic at a
		// moment. See
		// the 'deployModel'
		// [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint)
		// and
		// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel)
		// for more information.
		//
		// ~> **Note:** To set the map to empty, set '"{}"', apply, and
		// then remove the field from your config.
		traffic_split?: string

		// Output only. Timestamp when this Endpoint was last updated.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer
		// managed encryption key used to protect a resource. Has the
		// form:
		// 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
		// The key needs to be in the same region as where the compute
		// resource is created.
		kms_key_name!: string
	})

	#predict_request_response_logging_config: close({
		bigquery_destination?: matchN(1, [_#defs."/$defs/predict_request_response_logging_config/$defs/bigquery_destination", list.MaxItems(1) & [..._#defs."/$defs/predict_request_response_logging_config/$defs/bigquery_destination"]])

		// If logging is enabled or not.
		enabled?: bool

		// Percentage of requests to be logged, expressed as a fraction in
		// range(0,1]
		sampling_rate?: number
	})

	#private_service_connect_config: close({
		// Required. If true, expose the IndexEndpoint via private service
		// connect.
		enable_private_service_connect!: bool

		// A list of Projects from which the forwarding rule will target
		// the service attachment.
		project_allowlist?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/predict_request_response_logging_config/$defs/bigquery_destination": close({
		// BigQuery URI to a project or table, up to 2000 characters long.
		// When only the project is specified, the Dataset and Table is
		// created. When the full table reference is specified, the
		// Dataset must exist and table must not exist. Accepted forms: -
		// BigQuery path. For example: 'bq://projectId' or
		// 'bq://projectId.bqDatasetId' or
		// 'bq://projectId.bqDatasetId.bqTableId'.
		output_uri?: string
	})
}
