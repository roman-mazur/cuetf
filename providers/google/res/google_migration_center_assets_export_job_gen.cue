package res

import "list"

google_migration_center_assets_export_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_assets_export_job")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		performance_data?: matchN(1, [#performance_data, list.MaxItems(1) & [...#performance_data]])
		signed_uri_destination?: matchN(1, [#signed_uri_destination, list.MaxItems(1) & [...#signed_uri_destination]])
		timeouts?: #timeouts

		// The ID to use for the asset export job.
		assets_export_job_id!: string

		// Resource creation time.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Configuration for asset inventory details exports.
		inventory?: [...close({})]

		// Labels as key value pairs.
		// Labels must meet the following constraints:
		//
		// * Keys and values can contain only lowercase letters, numeric characters,
		// underscores, and dashes.
		// * All characters must use UTF-8 encoding, and international characters are
		// allowed.
		// * Keys must start with a lowercase letter or international character.
		// * Each resource is limited to a maximum of 64 labels.
		//
		// Both keys and values are additionally constrained to be <= 128 bytes.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. Resource name.
		name?: string

		// Configuration for network dependencies exports.
		network_dependencies?: [...close({})]

		// Recent non expired executions of the job.
		recent_executions?: [...close({
			end_time?:              string
			execution_id?:          string
			expire_time?:           string
			requested_asset_count?: number
			result?: [...close({
				error?: [...close({
					code?: number
					details?: [...close({})]
					message?: string
				})]
				output_files?: [...close({
					entries?: [...close({
						csv_output_file?: [...close({
							columns_count?: number
							row_count?:     number
							signed_uri?: [...close({
								file?: string
								uri?:  string
							})]
						})]
						file_size_bytes?: string
						xlsx_output_file?: [...close({
							signed_uri?: [...close({
								file?: string
								uri?:  string
							})]
						})]
					})]
				})]
				signed_uris?: [...close({
					signed_uris?: [...close({
						file?: string
						uri?:  string
					})]
				})]
			})]
			start_time?: string
		})]
		project?: string

		// When this value is set to 'true' the response will include all assets,
		// including those that are hidden.
		show_hidden?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Resource update time.
		update_time?: string
	})

	#condition: close({
		// Assets filter, supports the same syntax as asset listing.
		filter?: string
	})

	#performance_data: close({
		// When this value is set to a positive integer,
		// performance data will be returned for the most recent days
		// for which data is available. When this value is unset (or set to zero),
		// all available data is returned.
		// The maximum value is 420; values above 420 will be coerced to 420.
		// If unset (0 value) a default value of 40 will be used.
		max_days?: number
	})

	#signed_uri_destination: close({
		// The file format to export.
		// Possible values:
		// CSV
		// XLSX
		file_format!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
