package res

import "list"

#google_firebase_app_hosting_build: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firebase_app_hosting_build")
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

		// The ID of the Backend that this Build applies to
		backend!: string

		// The user-specified ID of the build being created.
		build_id!: string

		// The location of the [Cloud Build
		// logs](https://cloud.google.com/build/docs/view-build-results)
		// for the build
		// process.
		build_logs_uri?: string

		// Time at which the build was created.
		create_time?: string

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

		// The environment name of the backend when this build was
		// created.
		environment?: string

		// The 'Status' type defines a logical error model that is
		// suitable for
		// different programming environments, including REST APIs and RPC
		// APIs. It is
		// used by [gRPC](https://github.com/grpc). Each 'Status' message
		// contains
		// three pieces of data: error code, error message, and error
		// details.
		//
		// You can find out more about this error model and how to work
		// with it in the
		// [API Design
		// Guide](https://cloud.google.com/apis/design/errors).
		error?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]

		// The source of the error for the build, if in a 'FAILED' state.
		// Possible values:
		// CLOUD_BUILD
		// CLOUD_RUN
		error_source?: string

		// Server-computed checksum based on other values; may be sent
		// on update or delete to ensure operation is done on expected
		// resource.
		etag?: string
		id?:   string
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		timeouts?: #timeouts

		// The Artifact Registry
		// [container
		// image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
		// URI, used by the Cloud Run
		// ['revision'](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services.revisions)
		// for this build.
		image?: string

		// Unstructured key value map that can be used to organize and
		// categorize
		// objects.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the Backend that this Build applies to
		location!: string

		// Identifier. The resource name of the build.
		//
		// Format:
		//
		// 'projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}'.
		name?: string

		// The state of the build.
		// Possible values:
		// BUILDING
		// BUILT
		// DEPLOYING
		// READY
		// FAILED
		state?:   string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System-assigned, unique identifier.
		uid?: string

		// Time at which the build was last updated.
		update_time?: string
	})

	#source: close({
		codebase?: matchN(1, [_#defs."/$defs/source/$defs/codebase", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/codebase"]])
		container?: matchN(1, [_#defs."/$defs/source/$defs/container", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/container"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/source/$defs/codebase": close({
		// Version control metadata for a user associated with a resolved
		// codebase.
		// Currently assumes a Git user.
		author?: [...close({
			display_name?: string
			email?:        string
			image_uri?:    string
		})]

		// The branch in the codebase to build from, using the latest
		// commit.
		branch?: string

		// The commit in the codebase to build from.
		commit?: string

		// The message of a codebase change.
		commit_message?: string

		// The time the change was made.
		commit_time?: string

		// The human-friendly name to use for this Codebase when
		// displaying a build.
		// We use the first eight characters of the SHA-1 hash for
		// GitHub.com.
		display_name?: string

		// The full SHA-1 hash of a Git commit, if available.
		hash?: string

		// A URI linking to the codebase on an hosting provider's website.
		// May
		// not be valid if the commit has been rebased or force-pushed out
		// of
		// existence in the linked repository.
		uri?: string
	})

	_#defs: "/$defs/source/$defs/container": close({
		// A URI representing a container for the backend to use.
		image!: string
	})
}
