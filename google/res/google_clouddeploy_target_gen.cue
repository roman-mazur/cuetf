package res

import "list"

#google_clouddeploy_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddeploy_target")
	close({
		// Optional. User annotations. These attributes can only be set
		// and used by the user, and not by Google Cloud Deploy. See
		// https://google.aip.dev/128#annotations for more details such
		// as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Time at which the `Target` was created.
		create_time?: string

		// Optional. The deploy parameters to use for this target.
		deploy_parameters?: [string]: string

		// Optional. Description of the `Target`. Max length is 255
		// characters.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. This checksum is computed by the server based on the
		// value of other fields, and may be sent on update and delete
		// requests to ensure the client has an up-to-date value before
		// proceeding.
		etag?: string
		id?:   string

		// Optional. Labels are attributes that can be set and used by
		// both the user and by Google Cloud Deploy. Labels must meet the
		// following constraints: * Keys and values can contain only
		// lowercase letters, numeric characters, underscores, and
		// dashes. * All characters must use UTF-8 encoding, and
		// international characters are allowed. * Keys must start with a
		// lowercase letter or international character. * Each resource
		// is limited to a maximum of 64 labels. Both keys and values are
		// additionally constrained to be <= 128 bytes.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Name of the `Target`. Format is
		// `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
		name!: string
		anthos_cluster?: matchN(1, [#anthos_cluster, list.MaxItems(1) & [...#anthos_cluster]])
		associated_entities?: matchN(1, [#associated_entities, [...#associated_entities]])
		custom_target?: matchN(1, [#custom_target, list.MaxItems(1) & [...#custom_target]])
		execution_configs?: matchN(1, [#execution_configs, [...#execution_configs]])
		gke?: matchN(1, [#gke, list.MaxItems(1) & [...#gke]])
		multi_target?: matchN(1, [#multi_target, list.MaxItems(1) & [...#multi_target]])
		run?: matchN(1, [#run, list.MaxItems(1) & [...#run]])
		timeouts?: #timeouts

		// The project for the resource
		project?: string

		// Optional. Whether or not the `Target` requires approval.
		require_approval?: bool

		// Output only. Resource id of the `Target`.
		target_id?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Unique identifier of the `Target`.
		uid?: string

		// Output only. Most recent time at which the `Target` was
		// updated.
		update_time?: string
	})

	#anthos_cluster: close({
		// Membership of the GKE Hub-registered cluster to which to apply
		// the Skaffold configuration. Format is
		// `projects/{project}/locations/{location}/memberships/{membership_name}`.
		membership?: string
	})

	#associated_entities: close({
		anthos_clusters?: matchN(1, [_#defs."/$defs/associated_entities/$defs/anthos_clusters", [..._#defs."/$defs/associated_entities/$defs/anthos_clusters"]])
		gke_clusters?: matchN(1, [_#defs."/$defs/associated_entities/$defs/gke_clusters", [..._#defs."/$defs/associated_entities/$defs/gke_clusters"]])

		// The name for the key in the map for which this object is mapped
		// to in the API
		entity_id!: string
	})

	#custom_target: close({
		// Required. The name of the CustomTargetType. Format must be
		// `projects/{project}/locations/{location}/customTargetTypes/{custom_target_type}`.
		custom_target_type!: string
	})

	#execution_configs: close({
		// Optional. Cloud Storage location in which to store execution
		// outputs. This can either be a bucket ("gs://my-bucket") or a
		// path within a bucket ("gs://my-bucket/my-dir"). If
		// unspecified, a default bucket located in the same region will
		// be used.
		artifact_storage?: string

		// Optional. Execution timeout for a Cloud Build Execution. This
		// must be between 10m and 24h in seconds format. If unspecified,
		// a default timeout of 1h is used.
		execution_timeout?: string

		// Optional. Google service account to use for execution. If
		// unspecified, the project execution service account
		// (-compute@developer.gserviceaccount.com) is used.
		service_account?: string

		// Required. Usages when this configuration should be applied.
		usages!: [...string]

		// Optional. If true, additional logging will be enabled when
		// running builds in this execution environment.
		verbose?: bool

		// Optional. The resource name of the `WorkerPool`, with the
		// format
		// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
		// If this optional field is unspecified, the default Cloud Build
		// pool will be used.
		worker_pool?: string
	})

	#gke: close({
		// Information specifying a GKE Cluster. Format is
		// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}.
		cluster?: string

		// Optional. If set, the cluster will be accessed using the DNS
		// endpoint. Note that both `dns_endpoint` and `internal_ip`
		// cannot be set to true.
		dns_endpoint?: bool

		// Optional. If true, `cluster` is accessed using the private IP
		// address of the control plane endpoint. Otherwise, the default
		// IP address of the control plane endpoint is used. The default
		// IP address is the private IP address for clusters with private
		// control-plane endpoints and the public IP address otherwise.
		// Only specify this option when `cluster` is a [private GKE
		// cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
		internal_ip?: bool

		// Optional. If set, used to configure a
		// [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy)
		// to the Kubernetes server.
		proxy_url?: string
	})

	#multi_target: close({
		// Required. The target_ids of this multiTarget.
		target_ids!: [...string]
	})

	#run: close({
		// Required. The location where the Cloud Run Service should be
		// located. Format is `projects/{project}/locations/{location}`.
		location!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/associated_entities/$defs/anthos_clusters": close({
		// Optional. Membership of the GKE Hub-registered cluster to which
		// to apply the Skaffold configuration. Format is
		// `projects/{project}/locations/{location}/memberships/{membership_name}`.
		membership?: string
	})

	_#defs: "/$defs/associated_entities/$defs/gke_clusters": close({
		// Optional. Information specifying a GKE Cluster. Format is
		// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
		cluster?: string

		// Optional. If true, `cluster` is accessed using the private IP
		// address of the control plane endpoint. Otherwise, the default
		// IP address of the control plane endpoint is used. The default
		// IP address is the private IP address for clusters with private
		// control-plane endpoints and the public IP address otherwise.
		// Only specify this option when `cluster` is a [private GKE
		// cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
		internal_ip?: bool

		// Optional. If set, used to configure a
		// [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy)
		// to the Kubernetes server.
		proxy_url?: string
	})
}
