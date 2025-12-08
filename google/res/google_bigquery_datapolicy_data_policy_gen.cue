package res

import "list"

#google_bigquery_datapolicy_data_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_datapolicy_data_policy")
	close({
		// User-assigned (human readable) ID of the data policy that needs
		// to be unique within a project. Used as {dataPolicyId} in part
		// of the resource name.
		data_policy_id!: string

		// The enrollment level of the service. Possible values:
		// ["COLUMN_LEVEL_SECURITY_POLICY", "DATA_MASKING_POLICY"]
		data_policy_type!: string
		id?:               string

		// The name of the location of the data policy.
		location!: string
		data_masking_policy?: matchN(1, [#data_masking_policy, list.MaxItems(1) & [...#data_masking_policy]])

		// Resource name of this data policy, in the format of
		// projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
		name?:     string
		timeouts?: #timeouts

		// Policy tag resource name, in the format of
		// projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
		policy_tag!: string
		project?:    string
	})

	#data_masking_policy: close({
		// The available masking rules. Learn more here:
		// https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options.
		// Possible values: ["SHA256", "ALWAYS_NULL",
		// "DEFAULT_MASKING_VALUE", "LAST_FOUR_CHARACTERS",
		// "FIRST_FOUR_CHARACTERS", "EMAIL_MASK", "DATE_YEAR_MASK"]
		predefined_expression?: string

		// The name of the BigQuery routine that contains the custom
		// masking routine, in the format of
		// projects/{projectNumber}/datasets/{dataset_id}/routines/{routine_id}.
		routine?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
