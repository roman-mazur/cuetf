package res

#google_parameter_manager_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_parameter_manager_parameter")
	close({
		// The time at which the Parameter was created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The format type of the parameter resource. Default value:
		// "UNFORMATTED" Possible values: ["UNFORMATTED", "YAML", "JSON"]
		format?: string
		id?:     string

		// The resource name of the Cloud KMS CryptoKey used to encrypt
		// parameter version payload. Format
		// 'projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}'
		kms_key?: string

		// The labels assigned to this Parameter.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes,
		// and must conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		//
		// Label values must be between 0 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes,
		// and must conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		//
		// No more than 64 labels can be assigned to a given resource.
		//
		// An object containing a list of "key": value pairs. Example:
		// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The resource name of the Parameter. Format:
		// 'projects/{{project}}/locations/global/parameters/{{parameter_id}}'
		name?: string

		// This must be unique within the project.
		parameter_id!: string

		// Policy member strings of a Google Cloud resource.
		policy_member?: [...close({
			iam_policy_name_principal?: string
			iam_policy_uid_principal?:  string
		})]
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time at which the Parameter was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
