package res

import "list"

#google_vertex_ai_index_endpoint_deployed_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_index_endpoint_deployed_index")
	close({
		// The timestamp of when the Index was created in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		create_time?: string

		// The user specified ID of the DeployedIndex. The ID can be up to
		// 128 characters long and must start with a letter and only
		// contain letters, numbers, and underscores. The ID must be
		// unique within the project it is created in.
		deployed_index_id!: string

		// The deployment group can be no longer than 64 characters (eg:
		// 'test', 'prod'). If not set, we will use the 'default'
		// deployment group.
		// Creating deployment_groups with reserved_ip_ranges is a
		// recommended practice when the peered network has multiple
		// peering ranges. This creates your deployments from predictable
		// IP spaces for easier traffic administration. Also, one
		// deployment_group (except 'default') can only be used with the
		// same reserved_ip_ranges which means if the deployment_group
		// has been used with reserved_ip_ranges: [a, b, c], using it
		// with [a, b] or [d, e] is disallowed. [See the official
		// documentation
		// here](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#DeployedIndex.FIELDS.deployment_group).
		// Note: we only support up to 5 deployment groups (not including
		// 'default').
		deployment_group?: string

		// The display name of the Index. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name?: string

		// If true, private endpoint's access logs are sent to Cloud
		// Logging.
		enable_access_logging?: bool

		// The name of the Index this is the deployment of.
		index!: string
		id?:    string

		// Identifies the index endpoint. Must be in the format
		// 'projects/{{project}}/locations/{{region}}/indexEndpoints/{{indexEndpoint}}'
		index_endpoint!: string

		// The DeployedIndex may depend on various data on its original
		// Index. Additionally when certain changes to the original Index
		// are being done (e.g. when what the Index contains is being
		// changed) the DeployedIndex may be asynchronously updated in
		// the background to reflect these changes. If this timestamp's
		// value is at least the
		// [Index.update_time](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes#Index.FIELDS.update_time)
		// of the original Index, it means that this DeployedIndex and
		// the original Index are in sync. If this timestamp is older,
		// then to see which updates this DeployedIndex already contains
		// (and which it does not), one must
		// [list](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.operations/list#google.longrunning.Operations.ListOperations)
		// the operations that are running on the original Index. Only
		// the successfully completed Operations with updateTime equal or
		// before this sync time are contained in this DeployedIndex.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		index_sync_time?: string
		automatic_resources?: matchN(1, [#automatic_resources, list.MaxItems(1) & [...#automatic_resources]])
		dedicated_resources?: matchN(1, [#dedicated_resources, list.MaxItems(1) & [...#dedicated_resources]])
		deployed_index_auth_config?: matchN(1, [#deployed_index_auth_config, list.MaxItems(1) & [...#deployed_index_auth_config]])
		timeouts?: #timeouts

		// The name of the DeployedIndex resource.
		name?: string

		// Provides paths for users to send requests directly to the
		// deployed index services running on Cloud via private services
		// access. This field is populated if
		// [network](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexEndpoints#IndexEndpoint.FIELDS.network)
		// is configured.
		private_endpoints?: [...close({
			match_grpc_address?: string
			psc_automated_endpoints?: [...close({
				match_address?: string
				network?:       string
				project_id?:    string
			})]
			service_attachment?: string
		})]

		// The region of the index endpoint deployment. eg us-central1
		region?: string

		// A list of reserved ip ranges under the VPC network that can be
		// used for this DeployedIndex.
		// If set, we will deploy the index within the provided ip ranges.
		// Otherwise, the index might be deployed to any ip ranges under
		// the provided VPC network.
		//
		// The value should be the name of the address
		// (https://cloud.google.com/compute/docs/reference/rest/v1/addresses)
		// Example: ['vertex-ai-ip-range'].
		//
		// For more information about subnets and network IP ranges,
		// please see
		// https://cloud.google.com/vpc/docs/subnets#manually_created_subnet_ip_ranges.
		reserved_ip_ranges?: [...string]
	})

	#automatic_resources: close({
		// The maximum number of replicas this DeployedModel may be
		// deployed on when the traffic against it increases. If
		// maxReplicaCount is not set, the default value is
		// minReplicaCount. The max allowed replica count is 1000.
		//
		// The maximum number of replicas this DeployedModel may be
		// deployed on when the traffic against it increases. If the
		// requested value is too large, the deployment will error, but
		// if deployment succeeds then the ability to scale the model to
		// that many replicas is guaranteed (barring service outages). If
		// traffic against the DeployedModel increases beyond what its
		// replicas at maximum may handle, a portion of the traffic will
		// be dropped. If this value is not provided, a no upper bound
		// for scaling under heavy traffic will be assume, though Vertex
		// AI may be unable to scale beyond certain replica number.
		max_replica_count?: number

		// The minimum number of replicas this DeployedModel will be
		// always deployed on. If minReplicaCount is not set, the default
		// value is 2 (we don't provide SLA when minReplicaCount=1).
		//
		// If traffic against it increases, it may dynamically be deployed
		// onto more replicas up to
		// [maxReplicaCount](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/AutomaticResources#FIELDS.max_replica_count),
		// and as traffic decreases, some of these extra replicas may be
		// freed. If the requested value is too large, the deployment
		// will error.
		min_replica_count?: number
	})

	#dedicated_resources: close({
		machine_spec!: matchN(1, [_#defs."/$defs/dedicated_resources/$defs/machine_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/dedicated_resources/$defs/machine_spec"]])

		// The maximum number of replicas this DeployedModel may be
		// deployed on when the traffic against it increases. If
		// maxReplicaCount is not set, the default value is
		// minReplicaCount
		max_replica_count?: number

		// The minimum number of machine replicas this DeployedModel will
		// be always deployed on. This value must be greater than or
		// equal to 1.
		min_replica_count!: number
	})

	#deployed_index_auth_config: close({
		auth_provider?: matchN(1, [_#defs."/$defs/deployed_index_auth_config/$defs/auth_provider", list.MaxItems(1) & [..._#defs."/$defs/deployed_index_auth_config/$defs/auth_provider"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dedicated_resources/$defs/machine_spec": close({
		// The type of the machine.
		//
		// See the [list of machine types supported for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
		//
		// See the [list of machine types supported for custom
		// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
		//
		// For
		// [DeployedModel](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints#DeployedModel)
		// this field is optional, and the default value is
		// n1-standard-2. For
		// [BatchPredictionJob](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.batchPredictionJobs#BatchPredictionJob)
		// or as part of
		// [WorkerPoolSpec](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/CustomJobSpec#WorkerPoolSpec)
		// this field is required.
		machine_type?: string
	})

	_#defs: "/$defs/deployed_index_auth_config/$defs/auth_provider": close({
		// A list of allowed JWT issuers. Each entry must be a valid
		// Google service account, in the following format:
		// service-account-name@project-id.iam.gserviceaccount.com
		allowed_issuers?: [...string]

		// The list of JWT audiences. that are allowed to access. A JWT
		// containing any of these audiences will be accepted.
		audiences?: [...string]
	})
}
