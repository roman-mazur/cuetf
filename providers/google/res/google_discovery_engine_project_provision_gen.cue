package res

import "list"

google_discovery_engine_project_provision: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_project_provision")
	close({
		saas_params?: matchN(1, [#saas_params, list.MaxItems(1) & [...#saas_params]])
		timeouts?: #timeouts

		// Set to 'true' to specify that the caller has read and consents to the
		// [Terms for data use](https://cloud.google.com/retail/data-use-terms).
		accept_data_use_terms?: bool

		// The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms)
		// that the caller has read and consents to. An acceptable version is '2022-11-23',
		// and this may change over time.
		data_use_terms_version?: string
		id?:                     string

		// The geographic location in which to provision the project, such as
		// 'global', 'us', or 'eu'.
		location?: string
		project?:  string
	})

	#saas_params: close({
		// Set to 'true' to specify that the caller has read and consents to the
		// Terms for business edition quality of service.
		accept_biz_qos?: bool

		// Indicates whether the current request is for Business edition ('true')
		// or not ('false').
		is_biz?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
