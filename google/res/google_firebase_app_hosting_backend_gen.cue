package res

import "list"

#google_firebase_app_hosting_backend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firebase_app_hosting_backend")
	close({
		// Unstructured key value map that may be set by external tools to
		// store and arbitrary metadata. They are not queryable and should
		// be
		// preserved when modifying objects.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The [ID of a Web
		// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
		// associated with the backend.
		app_id!: string

		// Id of the backend. Also used as the service ID for Cloud Run,
		// and as part
		// of the default domain name.
		backend_id!: string

		// Time at which the backend was created.
		create_time?: string

		// Time at which the backend was deleted.
		delete_time?: string

		// Human-readable name. 63 character limit.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The environment name of the backend, used to load environment
		// variables
		// from environment specific configuration.
		environment?: string

		// Server-computed checksum based on other values; may be sent
		// on update or delete to ensure operation is done on expected
		// resource.
		etag?: string

		// Unstructured key value map that can be used to organize and
		// categorize
		// objects.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The canonical IDs of a Google Cloud location such as
		// "us-east1".
		location!: string
		codebase?: matchN(1, [#codebase, list.MaxItems(1) & [...#codebase]])
		timeouts?: #timeouts

		// A list of the resources managed by this backend.
		managed_resources?: [...close({
			run_service?: [...close({
				service?: string
			})]
		})]

		// Identifier. The resource name of the backend.
		//
		// Format:
		//
		// 'projects/{project}/locations/{locationId}/backends/{backendId}'.
		name?:    string
		project?: string

		// The name of the service account used for Cloud Build and Cloud
		// Run.
		// Should have the role roles/firebaseapphosting.computeRunner
		// or equivalent permissions.
		service_account!: string

		// Immutable. Specifies how App Hosting will serve the content for
		// this backend. It will
		// either be contained to a single region (REGIONAL_STRICT) or
		// allowed to use
		// App Hosting's global-replicated serving infrastructure
		// (GLOBAL_ACCESS). Possible values: ["REGIONAL_STRICT",
		// "GLOBAL_ACCESS"]
		serving_locality!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System-assigned, unique identifier.
		uid?: string

		// Time at which the backend was last updated.
		update_time?: string

		// The primary URI to communicate with the backend.
		uri?: string
	})

	#codebase: close({
		// The resource name for the Developer Connect
		// ['gitRepositoryLink'](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)
		// connected to this backend, in the format:
		//
		// projects/{project}/locations/{location}/connections/{connection}/gitRepositoryLinks/{repositoryLink}
		repository!: string

		// If 'repository' is provided, the directory relative to the root
		// of the
		// repository to use as the root for the deployed web app.
		root_directory?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
