package res

import "list"

#google_eventarc_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_eventarc_pipeline")
	close({
		// User-defined annotations. See
		// https://google.aip.dev/128#annotations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string
		destinations!: matchN(1, [#destinations, [_, ...] & [...#destinations]])

		// The creation time.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up
		// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt the event data. If not set, an internal
		// Google-owned key
		// will be used to encrypt messages. It must match the pattern
		// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
		crypto_key_name?: string

		// Display name of resource.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields, and might be sent only on create requests to
		// ensure that the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// User labels attached to the Pipeline that can be used to group
		// resources. An object containing a list of "key": value pairs.
		// Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		input_payload_format?: matchN(1, [#input_payload_format, list.MaxItems(1) & [...#input_payload_format]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		mediations?: matchN(1, [#mediations, [...#mediations]])
		retry_policy?: matchN(1, [#retry_policy, list.MaxItems(1) & [...#retry_policy]])
		timeouts?: #timeouts

		// The resource name of the Pipeline. Must be unique within the
		// location of the project and must be in
		// 'projects/{project}/locations/{location}/pipelines/{pipeline}'
		// format.
		name?: string

		// The user-provided ID to be assigned to the Pipeline. It should
		// match the
		// format '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'.
		pipeline_id!: string
		project?:     string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server-assigned unique identifier for the Pipeline. The value
		// is a UUID4 string and guaranteed to remain unchanged until the
		// resource is
		// deleted.
		uid?: string

		// The last-modified time.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up
		// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#destinations: close({
		// The resource name of the Message Bus to which events should be
		// published. The Message Bus resource should exist in the same
		// project as
		// the Pipeline. Format:
		// 'projects/{project}/locations/{location}/messageBuses/{message_bus}'
		message_bus?: string

		// The resource name of the Pub/Sub topic to which events should
		// be
		// published. Format:
		// 'projects/{project}/locations/{location}/topics/{topic}'
		topic?: string

		// The resource name of the Workflow whose Executions are
		// triggered by
		// the events. The Workflow resource should be deployed in the
		// same
		// project as the Pipeline. Format:
		// 'projects/{project}/locations/{location}/workflows/{workflow}'
		workflow?: string
		authentication_config?: matchN(1, [_#defs."/$defs/destinations/$defs/authentication_config", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/authentication_config"]])
		http_endpoint?: matchN(1, [_#defs."/$defs/destinations/$defs/http_endpoint", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/http_endpoint"]])
		network_config?: matchN(1, [_#defs."/$defs/destinations/$defs/network_config", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/network_config"]])
		output_payload_format?: matchN(1, [_#defs."/$defs/destinations/$defs/output_payload_format", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/output_payload_format"]])
	})

	#input_payload_format: close({
		avro?: matchN(1, [_#defs."/$defs/input_payload_format/$defs/avro", list.MaxItems(1) & [..._#defs."/$defs/input_payload_format/$defs/avro"]])
		json?: matchN(1, [_#defs."/$defs/input_payload_format/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/input_payload_format/$defs/json"]])
		protobuf?: matchN(1, [_#defs."/$defs/input_payload_format/$defs/protobuf", list.MaxItems(1) & [..._#defs."/$defs/input_payload_format/$defs/protobuf"]])
	})

	#logging_config: close({
		// The minimum severity of logs that will be sent to
		// Stackdriver/Platform
		// Telemetry. Logs at severitiy ≥ this value will be sent, unless
		// it is NONE. Possible values: ["NONE", "DEBUG", "INFO",
		// "NOTICE", "WARNING", "ERROR", "CRITICAL", "ALERT",
		// "EMERGENCY"]
		log_severity?: string
	})

	#mediations: close({
		transformation?: matchN(1, [_#defs."/$defs/mediations/$defs/transformation", list.MaxItems(1) & [..._#defs."/$defs/mediations/$defs/transformation"]])
	})

	#retry_policy: close({
		// The maximum number of delivery attempts for any message. The
		// value must
		// be between 1 and 100.
		// The default value for this field is 5.
		max_attempts?: number

		// The maximum amount of seconds to wait between retry attempts.
		// The value
		// must be between 1 and 600.
		// The default value for this field is 60.
		max_retry_delay?: string

		// The minimum amount of seconds to wait between retry attempts.
		// The value
		// must be between 1 and 600.
		// The default value for this field is 5.
		min_retry_delay?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destinations/$defs/authentication_config": close({
		google_oidc?: matchN(1, [_#defs."/$defs/destinations/$defs/authentication_config/$defs/google_oidc", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/authentication_config/$defs/google_oidc"]])
		oauth_token?: matchN(1, [_#defs."/$defs/destinations/$defs/authentication_config/$defs/oauth_token", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/authentication_config/$defs/oauth_token"]])
	})

	_#defs: "/$defs/destinations/$defs/authentication_config/$defs/google_oidc": close({
		// Audience to be used to generate the OIDC Token. The audience
		// claim
		// identifies the recipient that the JWT is intended for. If
		// unspecified, the destination URI will be used.
		audience?: string

		// Service account email used to generate the OIDC Token.
		// The principal who calls this API must have
		// iam.serviceAccounts.actAs permission in the service account.
		// See
		// https://cloud.google.com/iam/docs/understanding-service-accounts
		// for more information. Eventarc service agents must have
		// roles/roles/iam.serviceAccountTokenCreator role to allow the
		// Pipeline to create OpenID tokens for authenticated requests.
		service_account!: string
	})

	_#defs: "/$defs/destinations/$defs/authentication_config/$defs/oauth_token": close({
		// OAuth scope to be used for generating OAuth access token. If
		// not
		// specified, "https://www.googleapis.com/auth/cloud-platform"
		// will be
		// used.
		scope?: string

		// Service account email used to generate the [OAuth
		// token](https://developers.google.com/identity/protocols/OAuth2).
		// The principal who calls this API must have
		// iam.serviceAccounts.actAs permission in the service account.
		// See
		// https://cloud.google.com/iam/docs/understanding-service-accounts
		// for more information. Eventarc service agents must have
		// roles/roles/iam.serviceAccountTokenCreator role to allow
		// Pipeline
		// to create OAuth2 tokens for authenticated requests.
		service_account!: string
	})

	_#defs: "/$defs/destinations/$defs/http_endpoint": close({
		// The CEL expression used to modify how the destination-bound
		// HTTP
		// request is constructed.
		//
		// If a binding expression is not specified here, the message
		// is treated as a CloudEvent and is mapped to the HTTP request
		// according
		// to the CloudEvent HTTP Protocol Binding Binary Content Mode
		// (https://github.com/cloudevents/spec/blob/main/cloudevents/bindings/http-protocol-binding.md#31-binary-content-mode).
		// In this representation, all fields except the 'data' and
		// 'datacontenttype' field on the message are mapped to HTTP
		// request
		// headers with a prefix of 'ce-'.
		//
		// To construct the HTTP request payload and the value of the
		// content-type
		// HTTP header, the payload format is defined as follows:
		// 1) Use the output_payload_format_type on the
		// Pipeline.Destination if it
		// is set, else:
		// 2) Use the input_payload_format_type on the Pipeline if it is
		// set,
		// else:
		// 3) Treat the payload as opaque binary data.
		//
		// The 'data' field of the message is converted to the payload
		// format or
		// left as-is for case 3) and then attached as the payload of the
		// HTTP
		// request. The 'content-type' header on the HTTP request is set
		// to the
		// payload format type or left empty for case 3). However, if a
		// mediation
		// has updated the 'datacontenttype' field on the message so that
		// it is
		// not the same as the payload format type but it is still a
		// prefix of the
		// payload format type, then the 'content-type' header on the HTTP
		// request
		// is set to this 'datacontenttype' value. For example, if the
		// 'datacontenttype' is "application/json" and the payload format
		// type is
		// "application/json; charset=utf-8", then the 'content-type'
		// header on
		// the HTTP request is set to "application/json; charset=utf-8".
		//
		// If a non-empty binding expression is specified then this
		// expression is
		// used to modify the default CloudEvent HTTP Protocol Binding
		// Binary
		// Content representation.
		// The result of the CEL expression must be a map of key/value
		// pairs
		// which is used as follows:
		// - If a map named 'headers' exists on the result of the
		// expression,
		// then its key/value pairs are directly mapped to the HTTP
		// request
		// headers. The headers values are constructed from the
		// corresponding
		// value type's canonical representation. If the 'headers' field
		// doesn't
		// exist then the resulting HTTP request will be the headers of
		// the
		// CloudEvent HTTP Binding Binary Content Mode representation of
		// the final
		// message. Note: If the specified binding expression, has updated
		// the
		// 'datacontenttype' field on the message so that it is not the
		// same as
		// the payload format type but it is still a prefix of the payload
		// format
		// type, then the 'content-type' header in the 'headers' map is
		// set to
		// this 'datacontenttype' value.
		// - If a field named 'body' exists on the result of the
		// expression then
		// its value is directly mapped to the body of the request. If the
		// value
		// of the 'body' field is of type bytes or string then it is used
		// for
		// the HTTP request body as-is, with no conversion. If the body
		// field is
		// of any other type then it is converted to a JSON string. If the
		// body
		// field does not exist then the resulting payload of the HTTP
		// request
		// will be data value of the CloudEvent HTTP Binding Binary
		// Content Mode
		// representation of the final message as described earlier.
		// - Any other fields in the resulting expression will be ignored.
		//
		// The CEL expression may access the incoming CloudEvent message
		// in its
		// definition, as follows:
		// - The 'data' field of the incoming CloudEvent message can be
		// accessed
		// using the 'message.data' value. Subfields of 'message.data' may
		// also be
		// accessed if an input_payload_format has been specified on the
		// Pipeline.
		// - Each attribute of the incoming CloudEvent message can be
		// accessed
		// using the 'message.' value, where is replaced with the
		// name of the attribute.
		// - Existing headers can be accessed in the CEL expression using
		// the
		// 'headers' variable. The 'headers' variable defines a map of
		// key/value
		// pairs corresponding to the HTTP headers of the CloudEvent HTTP
		// Binding
		// Binary Content Mode representation of the final message as
		// described
		// earlier. For example, the following CEL expression can be used
		// to
		// construct an HTTP request by adding an additional header to the
		// HTTP
		// headers of the CloudEvent HTTP Binding Binary Content Mode
		// representation of the final message and by overwriting the body
		// of the
		// request:
		//
		// '''
		// {
		// "headers": headers.merge({"new-header-key":
		// "new-header-value"}),
		// "body": "new-body"
		// }
		// '''
		// - The default binding for the message payload can be accessed
		// using the
		// 'body' variable. It conatins a string representation of the
		// message
		// payload in the format specified by the 'output_payload_format'
		// field.
		// If the 'input_payload_format' field is not set, the 'body'
		// variable contains the same message payload bytes that were
		// published.
		//
		// Additionally, the following CEL extension functions are
		// provided for
		// use in this CEL expression:
		// - toBase64Url:
		// map.toBase64Url() -> string
		// - Converts a CelValue to a base64url encoded string
		// - toJsonString: map.toJsonString() -> string
		// - Converts a CelValue to a JSON string
		// - merge:
		// map1.merge(map2) -> map3
		// - Merges the passed CEL map with the existing CEL map the
		// function is applied to.
		// - If the same key exists in both maps, if the key's value is
		// type
		// map both maps are merged else the value from the passed map is
		// used.
		// - denormalize:
		// map.denormalize() -> map
		// - Denormalizes a CEL map such that every value of type map or
		// key
		// in the map is expanded to return a single level map.
		// - The resulting keys are "." separated indices of the map keys.
		// - For example:
		// {
		// "a": 1,
		// "b": {
		// "c": 2,
		// "d": 3
		// }
		// "e": [4, 5]
		// }
		// .denormalize()
		// -> {
		// "a": 1,
		// "b.c": 2,
		// "b.d": 3,
		// "e.0": 4,
		// "e.1": 5
		// }
		// - setField:
		// map.setField(key, value) -> message
		// - Sets the field of the message with the given key to the
		// given value.
		// - If the field is not present it will be added.
		// - If the field is present it will be overwritten.
		// - The key can be a dot separated path to set a field in a
		// nested
		// message.
		// - Key must be of type string.
		// - Value may be any valid type.
		// - removeFields:
		// map.removeFields([key1, key2, ...]) -> message
		// - Removes the fields of the map with the given keys.
		// - The keys can be a dot separated path to remove a field in a
		// nested message.
		// - If a key is not found it will be ignored.
		// - Keys must be of type string.
		// - toMap:
		// [map1, map2, ...].toMap() -> map
		// - Converts a CEL list of CEL maps to a single CEL map
		// - toCloudEventJsonWithPayloadFormat:
		// message.toCloudEventJsonWithPayloadFormat() -> map
		// - Converts a message to the corresponding structure of JSON
		// format for CloudEvents.
		// - It converts 'data' to destination payload format
		// specified in 'output_payload_format'. If
		// 'output_payload_format' is
		// not set, the data will remain unchanged.
		// - It also sets the corresponding datacontenttype of
		// the CloudEvent, as indicated by
		// 'output_payload_format'. If no
		// 'output_payload_format' is set it will use the value of the
		// "datacontenttype" attribute on the CloudEvent if present, else
		// remove "datacontenttype" attribute.
		// - This function expects that the content of the message will
		// adhere to the standard CloudEvent format. If it doesn't then
		// this
		// function will fail.
		// - The result is a CEL map that corresponds to the JSON
		// representation of the CloudEvent. To convert that data to a
		// JSON
		// string it can be chained with the toJsonString function.
		//
		// The Pipeline expects that the message it receives adheres to
		// the
		// standard CloudEvent format. If it doesn't then the outgoing
		// message
		// request may fail with a persistent error.
		message_binding_template?: string

		// The URI of the HTTP enpdoint.
		//
		// The value must be a RFC2396 URI string.
		// Examples: 'https://svc.us-central1.p.local:8080/route'.
		// Only the HTTPS protocol is supported.
		uri!: string
	})

	_#defs: "/$defs/destinations/$defs/network_config": close({
		// Name of the NetworkAttachment that allows access to the
		// consumer VPC.
		//
		// Format:
		// 'projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}'
		//
		// Required for HTTP endpoint destinations. Must not be specified
		// for
		// Workflows, MessageBus, or Topic destinations.
		network_attachment?: string
	})

	_#defs: "/$defs/destinations/$defs/output_payload_format": close({
		avro?: matchN(1, [_#defs."/$defs/destinations/$defs/output_payload_format/$defs/avro", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/output_payload_format/$defs/avro"]])
		json?: matchN(1, [_#defs."/$defs/destinations/$defs/output_payload_format/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/output_payload_format/$defs/json"]])
		protobuf?: matchN(1, [_#defs."/$defs/destinations/$defs/output_payload_format/$defs/protobuf", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/output_payload_format/$defs/protobuf"]])
	})

	_#defs: "/$defs/destinations/$defs/output_payload_format/$defs/avro": close({
		// The entire schema definition is stored in this field.
		schema_definition?: string
	})

	_#defs: "/$defs/destinations/$defs/output_payload_format/$defs/json": close({})

	_#defs: "/$defs/destinations/$defs/output_payload_format/$defs/protobuf": close({
		// The entire schema definition is stored in this field.
		schema_definition?: string
	})

	_#defs: "/$defs/input_payload_format/$defs/avro": close({
		// The entire schema definition is stored in this field.
		schema_definition?: string
	})

	_#defs: "/$defs/input_payload_format/$defs/json": close({})

	_#defs: "/$defs/input_payload_format/$defs/protobuf": close({
		// The entire schema definition is stored in this field.
		schema_definition?: string
	})

	_#defs: "/$defs/mediations/$defs/transformation": close({
		// The CEL expression template to apply to transform messages.
		// The following CEL extension functions are provided for
		// use in this CEL expression:
		// - merge:
		// map1.merge(map2) -> map3
		// - Merges the passed CEL map with the existing CEL map the
		// function is applied to.
		// - If the same key exists in both maps, if the key's value is
		// type
		// map both maps are merged else the value from the passed map is
		// used.
		// - denormalize:
		// map.denormalize() -> map
		// - Denormalizes a CEL map such that every value of type map or
		// key
		// in the map is expanded to return a single level map.
		// - The resulting keys are "." separated indices of the map keys.
		// - For example:
		// {
		// "a": 1,
		// "b": {
		// "c": 2,
		// "d": 3
		// }
		// "e": [4, 5]
		// }
		// .denormalize()
		// -> {
		// "a": 1,
		// "b.c": 2,
		// "b.d": 3,
		// "e.0": 4,
		// "e.1": 5
		// }
		// - setField:
		// map.setField(key, value) -> message
		// - Sets the field of the message with the given key to the
		// given value.
		// - If the field is not present it will be added.
		// - If the field is present it will be overwritten.
		// - The key can be a dot separated path to set a field in a
		// nested
		// message.
		// - Key must be of type string.
		// - Value may be any valid type.
		// - removeFields:
		// map.removeFields([key1, key2, ...]) -> message
		// - Removes the fields of the map with the given keys.
		// - The keys can be a dot separated path to remove a field in a
		// nested message.
		// - If a key is not found it will be ignored.
		// - Keys must be of type string.
		// - toMap:
		// [map1, map2, ...].toMap() -> map
		// - Converts a CEL list of CEL maps to a single CEL map
		// - toDestinationPayloadFormat():
		// message.data.toDestinationPayloadFormat() -> string or bytes
		// - Converts the message data to the destination payload format
		// specified in Pipeline.Destination.output_payload_format
		// - This function is meant to be applied to the message.data
		// field.
		// - If the destination payload format is not set, the function
		// will
		// return the message data unchanged.
		// - toCloudEventJsonWithPayloadFormat:
		// message.toCloudEventJsonWithPayloadFormat() -> map
		// - Converts a message to the corresponding structure of JSON
		// format for CloudEvents
		// - This function applies toDestinationPayloadFormat() to the
		// message data. It also sets the corresponding datacontenttype of
		// the CloudEvent, as indicated by
		// Pipeline.Destination.output_payload_format. If no
		// output_payload_format is set it will use the existing
		// datacontenttype on the CloudEvent if present, else leave
		// datacontenttype absent.
		// - This function expects that the content of the message will
		// adhere to the standard CloudEvent format. If it doesn't then
		// this
		// function will fail.
		// - The result is a CEL map that corresponds to the JSON
		// representation of the CloudEvent. To convert that data to a
		// JSON
		// string it can be chained with the toJsonString function.
		transformation_template?: string
	})
}
