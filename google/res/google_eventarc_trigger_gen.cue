package res

import "list"

#google_eventarc_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_eventarc_trigger")
	close({
		// Optional. The name of the channel associated with the trigger
		// in
		// 'projects/{project}/locations/{location}/channels/{channel}'
		// format. You must provide a channel to receive events from
		// Eventarc SaaS partners.
		channel?: string

		// Output only. The reason(s) why a trigger is in FAILED state.
		conditions?: [string]: string

		// Output only. The creation time.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only. This checksum is computed by the server based on
		// the value of other fields, and may be sent only on create
		// requests to ensure the client has an up-to-date value before
		// proceeding.
		etag?: string

		// Optional. EventDataContentType specifies the type of payload in
		// MIME format that is expected from the CloudEvent data field.
		// This is set to 'application/json' if the value is not defined.
		event_data_content_type?: string

		// Optional. User labels attached to the triggers that can be used
		// to group resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string
		id?:       string

		// Required. The resource name of the trigger. Must be unique
		// within the location on the project.
		name!: string
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		matching_criteria?: matchN(1, [#matching_criteria, [_, ...] & [...#matching_criteria]])
		timeouts?: #timeouts
		transport?: matchN(1, [#transport, list.MaxItems(1) & [...#transport]])

		// Optional. The IAM service account email associated with the
		// trigger. The service account represents the identity of the
		// trigger. The principal who calls this API must have
		// 'iam.serviceAccounts.actAs' permission in the service account.
		// See
		// https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common
		// for more information. For Cloud Run destinations, this service
		// account is used to generate identity tokens when invoking the
		// service. See
		// https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account
		// for information on how to invoke authenticated Cloud Run
		// services. In order to create Audit Log triggers, the service
		// account should also have 'roles/eventarc.eventReceiver' IAM
		// role.
		service_account?: string
		project?:         string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Server assigned unique identifier for the trigger.
		// The value is a UUID4 string and guaranteed to remain unchanged
		// until the resource is deleted.
		uid?: string

		// Output only. The last-modified time.
		update_time?: string
	})

	#destination: close({
		// The Cloud Function resource name. Only Cloud Functions V2 is
		// supported. Format
		// projects/{project}/locations/{location}/functions/{function}
		// This is a read-only field. [WARNING] Creating Cloud Functions
		// V2 triggers is only supported via the Cloud Functions product.
		// An error will be returned if the user sets this value.
		cloud_function?: string
		cloud_run_service?: matchN(1, [_#defs."/$defs/destination/$defs/cloud_run_service", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/cloud_run_service"]])
		gke?: matchN(1, [_#defs."/$defs/destination/$defs/gke", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/gke"]])
		http_endpoint?: matchN(1, [_#defs."/$defs/destination/$defs/http_endpoint", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/http_endpoint"]])
		network_config?: matchN(1, [_#defs."/$defs/destination/$defs/network_config", list.MaxItems(1) & [..._#defs."/$defs/destination/$defs/network_config"]])

		// The resource name of the Workflow whose Executions are
		// triggered by the events. The Workflow resource should be
		// deployed in the same project as the trigger. Format:
		// 'projects/{project}/locations/{location}/workflows/{workflow}'
		workflow?: string
	})

	#matching_criteria: close({
		// Required. The name of a CloudEvents attribute. Currently, only
		// a subset of attributes are supported for filtering. All
		// triggers MUST provide a filter for the 'type' attribute.
		attribute!: string

		// Optional. The operator used for matching the events with the
		// value of the filter. If not specified, only events that have
		// an exact key-value pair specified in the filter are matched.
		// The only allowed value is 'match-path-pattern'.
		operator?: string

		// Required. The value for the attribute. See
		// https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud
		// for available values.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#transport: close({
		pubsub?: matchN(1, [_#defs."/$defs/transport/$defs/pubsub", list.MaxItems(1) & [..._#defs."/$defs/transport/$defs/pubsub"]])
	})

	_#defs: "/$defs/destination/$defs/cloud_run_service": close({
		// Optional. The relative path on the Cloud Run service the events
		// should be sent to. The value must conform to the definition of
		// URI path segment (section 3.3 of RFC2396). Examples: "/route",
		// "route", "route/subroute".
		path?: string

		// Required. The region the Cloud Run service is deployed in.
		region?: string

		// Required. The name of the Cloud Run service being addressed.
		// See
		// https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services.
		// Only services located in the same project of the trigger
		// object can be addressed.
		service!: string
	})

	_#defs: "/$defs/destination/$defs/gke": close({
		// Required. The name of the cluster the GKE service is running
		// in. The cluster must be running in the same project as the
		// trigger being created.
		cluster!: string

		// Required. The name of the Google Compute Engine in which the
		// cluster resides, which can either be compute zone (for
		// example, us-central1-a) for the zonal clusters or region (for
		// example, us-central1) for regional clusters.
		location!: string

		// Required. The namespace the GKE service is running in.
		namespace!: string

		// Optional. The relative path on the GKE service the events
		// should be sent to. The value must conform to the definition of
		// a URI path segment (section 3.3 of RFC2396). Examples:
		// "/route", "route", "route/subroute".
		path?: string

		// Required. Name of the GKE service.
		service!: string
	})

	_#defs: "/$defs/destination/$defs/http_endpoint": close({
		// Required. The URI of the HTTP enpdoint. The value must be a
		// RFC2396 URI string. Examples: 'http://10.10.10.8:80/route',
		// 'http://svc.us-central1.p.local:8080/'. Only HTTP and HTTPS
		// protocols are supported. The host can be either a static IP
		// addressable from the VPC specified by the network config, or
		// an internal DNS hostname of the service resolvable via Cloud
		// DNS.
		uri!: string
	})

	_#defs: "/$defs/destination/$defs/network_config": close({
		// Required. Name of the NetworkAttachment that allows access to
		// the destination VPC. Format:
		// 'projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}'
		network_attachment!: string
	})

	_#defs: "/$defs/transport/$defs/pubsub": close({
		// Output only. The name of the Pub/Sub subscription created and
		// managed by Eventarc system as a transport for the event
		// delivery. Format:
		// 'projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}'.
		subscription?: string

		// Optional. The name of the Pub/Sub topic created and managed by
		// Eventarc system as a transport for the event delivery. Format:
		// 'projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an
		// existing topic for triggers of the type
		// google.cloud.pubsub.topic.v1.messagePublished' only. The topic
		// you provide here will not be deleted by Eventarc at trigger
		// deletion.
		topic?: string
	})
}
