package res

import "list"

#google_bigquery_datapolicyv2_data_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_datapolicyv2_data_policy")
	close({
		// User-assigned (human readable) ID of the data policy that needs
		// to be
		// unique within a project. Used as {data_policy_id} in part of
		// the resource
		// name.
		data_policy_id!: string

		// Type of data policy.
		// Possible values:
		// DATA_MASKING_POLICY
		// RAW_DATA_ACCESS_POLICY
		// COLUMN_LEVEL_SECURITY_POLICY
		data_policy_type!: string

		// The etag for this Data Policy.
		// This field is used for UpdateDataPolicy calls. If Data Policy
		// exists, this
		// field is required and must match the server's etag. It will
		// also be
		// populated in the response of GetDataPolicy, CreateDataPolicy,
		// and
		// UpdateDataPolicy calls.
		etag?: string

		// The list of IAM principals that have Fine Grained Access to the
		// underlying
		// data goverened by this data policy.
		//
		// Uses the [IAM V2 principal
		// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2)
		// Only
		// supports principal types users, groups, serviceaccounts,
		// cloudidentity.
		// This field is supported in V2 Data Policy only. In case of V1
		// data policies
		// (i.e. verion = 1 and policy_tag is set), this field is not
		// populated.
		grantees?: [...string]
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. Resource name of this data policy, in the format of
		// 'projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}'.
		name?: string
		data_masking_policy?: matchN(1, [#data_masking_policy, list.MaxItems(1) & [...#data_masking_policy]])
		timeouts?: #timeouts

		// Policy tag resource name, in the format of
		// 'projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}'.
		// policy_tag is supported only for V1 data policies.
		policy_tag?: string
		project?:    string

		// The version of the Data Policy resource.
		// Possible values:
		// V1
		// V2
		version?: string
	})

	#data_masking_policy: close({
		// A predefined masking expression.
		// Possible values:
		// SHA256
		// ALWAYS_NULL
		// DEFAULT_MASKING_VALUE
		// LAST_FOUR_CHARACTERS
		// FIRST_FOUR_CHARACTERS
		// EMAIL_MASK
		// DATE_YEAR_MASK
		// RANDOM_HASH
		predefined_expression?: string

		// The name of the BigQuery routine that contains the custom
		// masking
		// routine, in the format of
		// 'projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}'.
		routine?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
