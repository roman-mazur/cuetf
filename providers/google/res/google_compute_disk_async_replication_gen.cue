package res

import "list"

google_compute_disk_async_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_disk_async_replication")
	close({
		secondary_disk!: matchN(1, [#secondary_disk, list.MaxItems(1) & [_, ...] & [...#secondary_disk]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Primary disk for asynchronous replication.
		primary_disk!: string
	})

	#secondary_disk: close({
		// Secondary disk for asynchronous replication.
		disk!: string

		// Output-only. Status of replication on the secondary disk.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
