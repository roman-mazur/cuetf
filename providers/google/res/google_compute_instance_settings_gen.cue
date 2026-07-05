package res

import "list"

google_compute_instance_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_settings")
	close({
		metadata?: matchN(1, [#metadata, list.MaxItems(1) & [...#metadata]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The fingerprint used for optimistic locking of this resource. Used
		// internally during updates.
		fingerprint?: string
		id?:          string

		// A reference to the zone where the machine resides.
		zone!:    string
		project?: string
	})

	#metadata: close({
		// A metadata key/value items map. The total size of all keys and values must be less than 512KB
		items?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
