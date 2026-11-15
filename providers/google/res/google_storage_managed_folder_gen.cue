package res

import "list"

google_storage_managed_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_managed_folder")
	close({
		rapid_cache_config?: matchN(1, [#rapid_cache_config, list.MaxItems(1) & [...#rapid_cache_config]])
		timeouts?: #timeouts

		// The name of the bucket that contains the managed folder.
		bucket!: string

		// The timestamp at which this managed folder was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Allows the deletion of a managed folder even if contains
		// objects. If a non-empty managed folder is deleted, any objects
		// within the folder will remain in a simulated folder with the
		// same name.
		force_destroy?: bool
		id?:            string

		// The metadata generation of the managed folder.
		metageneration?: string

		// The name of the managed folder expressed as a path. Must include
		// trailing '/'. For example, 'example_dir/example_dir2/'.
		name!: string

		// The timestamp at which this managed folder was most recently updated.
		update_time?: string
		self_link?:   string
	})

	#rapid_cache_config: close({
		policies!: matchN(1, [_#defs."/$defs/rapid_cache_config/$defs/policies", [_, ...] & [..._#defs."/$defs/rapid_cache_config/$defs/policies"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rapid_cache_config/$defs/policies": close({
		// The ingest-on-write policy for objects in the managed folder. When
		// set to 'enabled', objects are automatically ingested into the cache
		// when they are written to the managed folder.
		// Possible values: ["enabled", "unspecified"]
		ingest_on_write?: string

		// The unique identifier of the rapid cache.
		rapid_cache_id!: string
	})
}
