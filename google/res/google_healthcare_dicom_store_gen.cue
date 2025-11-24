package res

import "list"

#google_healthcare_dicom_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_healthcare_dicom_store")
	close({
		// Identifies the dataset addressed by this request. Must be in
		// the format
		// 'projects/{project}/locations/{location}/datasets/{dataset}'
		dataset!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-supplied key-value pairs used to organize DICOM stores.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes, and must
		// conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		//
		// Label values are optional, must be between 1 and 63 characters
		// long, have a UTF-8 encoding of maximum 128
		// bytes, and must conform to the following PCRE regular
		// expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		//
		// No more than 64 labels can be associated with a given store.
		//
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The resource name for the DicomStore.
		//
		// ** Changing this property may recreate the Dicom store
		// (removing all data) **
		name!: string

		// The fully qualified name of this dataset
		self_link?: string
		id?:        string
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#notification_config: close({
		// The Cloud Pub/Sub topic that notifications of changes are
		// published on. Supplied by the client.
		// PubsubMessage.Data will contain the resource name.
		// PubsubMessage.MessageId is the ID of this message.
		// It is guaranteed to be unique within the topic.
		// PubsubMessage.PublishTime is the time at which the message
		// was published. Notifications are only sent if the topic is
		// non-empty. Topic names must be scoped to a
		// project.
		// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com
		// must have publisher permissions on the given
		// Cloud Pub/Sub topic. Not having adequate permissions will cause
		// the calls that send notifications to fail.
		pubsub_topic!: string

		// Indicates whether or not to send Pub/Sub notifications on bulk
		// import. Only supported for DICOM imports.
		send_for_bulk_import?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
