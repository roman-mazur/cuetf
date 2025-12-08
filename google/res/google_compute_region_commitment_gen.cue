package res

import "list"

#google_compute_region_commitment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_commitment")
	close({
		// Specifies whether to enable automatic renewal for the
		// commitment.
		// The default value is false if not specified.
		// If the field is set to true, the commitment will be
		// automatically renewed for either
		// one or three years according to the terms of the existing
		// commitment.
		auto_renew?: bool

		// The category of the commitment. Category MACHINE specifies
		// commitments composed of
		// machine resources such as VCPU or MEMORY, listed in resources.
		// Category LICENSE
		// specifies commitments composed of software licenses, listed in
		// licenseResources.
		// Note that only MACHINE commitments should have a Type
		// specified. Possible values: ["LICENSE", "MACHINE"]
		category?: string

		// Unique identifier for the resource.
		commitment_id?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Commitment end time in RFC3339 text format.
		end_timestamp?: string

		// Specifies the already existing reservations to attach to the
		// Commitment.
		existing_reservations?: string
		id?:                    string

		// Name of the resource. The name must be 1-63 characters long and
		// match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string

		// The plan for this commitment, which determines duration and
		// discount rate.
		// The currently supported plans are TWELVE_MONTH (1 year), and
		// THIRTY_SIX_MONTH (3 years). Possible values: ["TWELVE_MONTH",
		// "THIRTY_SIX_MONTH"]
		plan!:    string
		project?: string
		license_resource?: matchN(1, [#license_resource, list.MaxItems(1) & [...#license_resource]])
		resources?: matchN(1, [#resources, [...#resources]])
		timeouts?: #timeouts

		// URL of the region where this commitment may be used.
		region?:    string
		self_link?: string

		// Commitment start time in RFC3339 text format.
		start_timestamp?: string

		// Status of the commitment with regards to eventual expiration
		// (each commitment has an end date defined).
		status?: string

		// A human-readable explanation of the status.
		status_message?: string

		// The type of commitment, which affects the discount rate and the
		// eligible resources.
		// The type could be one of the following value:
		// 'MEMORY_OPTIMIZED', 'ACCELERATOR_OPTIMIZED',
		// 'GENERAL_PURPOSE_N1', 'GENERAL_PURPOSE_N2',
		// 'GENERAL_PURPOSE_N2D', 'GENERAL_PURPOSE_E2',
		// 'GENERAL_PURPOSE_T2D', 'GENERAL_PURPOSE_C3',
		// 'COMPUTE_OPTIMIZED_C2', 'COMPUTE_OPTIMIZED_C2D' and
		// 'GRAPHICS_OPTIMIZED_G2'
		type?: string
	})

	#license_resource: close({
		// The number of licenses purchased.
		amount?: string

		// Specifies the core range of the instance for which this license
		// applies.
		cores_per_license?: string

		// Any applicable license URI.
		license!: string
	})

	#resources: close({
		// Name of the accelerator type resource. Applicable only when the
		// type is ACCELERATOR.
		accelerator_type?: string

		// The amount of the resource purchased (in a type-dependent unit,
		// such as bytes). For vCPUs, this can just be an integer. For
		// memory,
		// this must be provided in MB. Memory must be a multiple of 256
		// MB,
		// with up to 6.5GB of memory per every vCPU.
		amount?: string

		// Type of resource for which this commitment applies.
		// Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
