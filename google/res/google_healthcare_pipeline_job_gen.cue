package res

import "list"

#google_healthcare_pipeline_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_pipeline_job")
	close({
		// Healthcare Dataset under which the Pipeline Job is to run
		dataset!: string

		// If true, disables writing lineage for the pipeline.
		disable_lineage?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-supplied key-value pairs used to organize Pipeline Jobs.
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of
		// maximum 128 bytes, and must conform to the following PCRE
		// regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		// Label values are optional, must be between 1 and 63 characters
		// long, have a
		// UTF-8 encoding of maximum 128 bytes, and must conform to the
		// following PCRE
		// regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		// No more than 64 labels can be associated with a given pipeline.
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Location where the Pipeline Job is to run
		location!: string

		// Specifies the name of the pipeline job. This field is
		// user-assigned.
		name!: string
		backfill_pipeline_job?: matchN(1, [#backfill_pipeline_job, list.MaxItems(1) & [...#backfill_pipeline_job]])
		mapping_pipeline_job?: matchN(1, [#mapping_pipeline_job, list.MaxItems(1) & [...#mapping_pipeline_job]])
		reconciliation_pipeline_job?: matchN(1, [#reconciliation_pipeline_job, list.MaxItems(1) & [...#reconciliation_pipeline_job]])
		timeouts?: #timeouts

		// The fully qualified name of this dataset
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#backfill_pipeline_job: close({
		// Specifies the mapping pipeline job to backfill, the name format
		// should follow:
		// projects/{projectId}/locations/{locationId}/datasets/{datasetId}/pipelineJobs/{pipelineJobId}.
		mapping_pipeline_job?: string
	})

	#mapping_pipeline_job: close({
		fhir_streaming_source?: matchN(1, [_#defs."/$defs/mapping_pipeline_job/$defs/fhir_streaming_source", list.MaxItems(1) & [..._#defs."/$defs/mapping_pipeline_job/$defs/fhir_streaming_source"]])
		mapping_config!: matchN(1, [_#defs."/$defs/mapping_pipeline_job/$defs/mapping_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/mapping_pipeline_job/$defs/mapping_config"]])

		// If set, the mapping pipeline will write snapshots to this
		// FHIR store without assigning stable IDs. You must
		// grant your pipeline project's Cloud Healthcare Service
		// Agent serviceaccount healthcare.fhirResources.executeBundle
		// and healthcare.fhirResources.create permissions on the
		// destination store. The destination store must set
		// [disableReferentialIntegrity][FhirStore.disable_referential_integrity]
		// to true. The destination store must use FHIR version R4.
		// Format:
		// project/{projectID}/locations/{locationID}/datasets/{datasetName}/fhirStores/{fhirStoreID}.
		fhir_store_destination?: string

		// If set to true, a mapping pipeline will send output snapshots
		// to the reconciliation pipeline in its dataset. A reconciliation
		// pipeline must exist in this dataset before a mapping pipeline
		// with a reconciliation destination can be created.
		reconciliation_destination?: bool
	})

	#reconciliation_pipeline_job: close({
		merge_config!: matchN(1, [_#defs."/$defs/reconciliation_pipeline_job/$defs/merge_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/reconciliation_pipeline_job/$defs/merge_config"]])

		// The harmonized FHIR store to write harmonized FHIR resources
		// to,
		// in the format of:
		// project/{projectID}/locations/{locationID}/datasets/{datasetName}/fhirStores/{id}
		fhir_store_destination?: string

		// Specifies the top level directory of the matching configs used
		// in all mapping pipelines, which extract properties for
		// resources
		// to be matched on.
		// Example: gs://{bucket-id}/{path/to/matching/configs}
		matching_uri_prefix!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/mapping_pipeline_job/$defs/fhir_streaming_source": close({
		// Describes the streaming FHIR data source.
		description?: string

		// The path to the FHIR store in the format
		// projects/{projectId}/locations/{locationId}/datasets/{datasetId}/fhirStores/{fhirStoreId}.
		fhir_store!: string
	})

	_#defs: "/$defs/mapping_pipeline_job/$defs/mapping_config": close({
		whistle_config_source?: matchN(1, [_#defs."/$defs/mapping_pipeline_job/$defs/mapping_config/$defs/whistle_config_source", list.MaxItems(1) & [..._#defs."/$defs/mapping_pipeline_job/$defs/mapping_config/$defs/whistle_config_source"]])

		// Describes the mapping configuration.
		description?: string
	})

	_#defs: "/$defs/mapping_pipeline_job/$defs/mapping_config/$defs/whistle_config_source": close({
		// Directory path where all the Whistle files are located.
		// Example: gs://{bucket-id}/{path/to/import-root/dir}
		import_uri_prefix!: string

		// Main configuration file which has the entrypoint or the root
		// function.
		// Example:
		// gs://{bucket-id}/{path/to/import-root/dir}/entrypoint-file-name.wstl.
		uri!: string
	})

	_#defs: "/$defs/reconciliation_pipeline_job/$defs/merge_config": close({
		whistle_config_source!: matchN(1, [_#defs."/$defs/reconciliation_pipeline_job/$defs/merge_config/$defs/whistle_config_source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/reconciliation_pipeline_job/$defs/merge_config/$defs/whistle_config_source"]])

		// Describes the mapping configuration.
		description?: string
	})

	_#defs: "/$defs/reconciliation_pipeline_job/$defs/merge_config/$defs/whistle_config_source": close({
		// Directory path where all the Whistle files are located.
		// Example: gs://{bucket-id}/{path/to/import-root/dir}
		import_uri_prefix!: string

		// Main configuration file which has the entrypoint or the root
		// function.
		// Example:
		// gs://{bucket-id}/{path/to/import-root/dir}/entrypoint-file-name.wstl.
		uri!: string
	})
}
