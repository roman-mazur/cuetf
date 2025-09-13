package res

import "list"

#google_integrations_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_integrations_client")
	close({
		// Indicates if sample integrations should be created along with
		// provisioning.
		create_sample_integrations?: bool

		// Location in which client needs to be provisioned.
		location!: string
		id?:       string
		cloud_kms_config?: matchN(1, [#cloud_kms_config, list.MaxItems(1) & [...#cloud_kms_config]])
		timeouts?: #timeouts
		project?:  string
	})

	#cloud_kms_config: close({
		// A Cloud KMS key is a named object containing one or more key
		// versions, along
		// with metadata for the key. A key exists on exactly one key ring
		// tied to a
		// specific location.
		key!: string

		// Each version of a key contains key material used for encryption
		// or signing.
		// A key's version is represented by an integer, starting at 1. To
		// decrypt data
		// or verify a signature, you must use the same key version that
		// was used to
		// encrypt or sign the data.
		key_version?: string

		// Location name of the key ring, e.g. "us-west1".
		kms_location!: string

		// The Google Cloud project id of the project where the kms key
		// stored. If empty,
		// the kms key is stored at the same project as customer's project
		// and ecrypted
		// with CMEK, otherwise, the kms key is stored in the tenant
		// project and
		// encrypted with GMEK.
		kms_project_id?: string

		// A key ring organizes keys in a specific Google Cloud location
		// and allows you to
		// manage access control on groups of keys. A key ring's name does
		// not need to be
		// unique across a Google Cloud project, but must be unique within
		// a given location.
		kms_ring!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
