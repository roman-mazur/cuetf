package data

#google_kms_key_rings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_key_rings")
	close({
		// The filter argument is used to add a filter query parameter
		// that limits which keys are retrieved by the data source:
		// ?filter={{filter}}.
		// Example values:
		//
		// * "name:my-key-" will retrieve key rings that contain "my-key-"
		// anywhere in their name. Note: names take the form
		// projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}.
		// *
		// "name=projects/my-project/locations/global/keyRings/my-key-ring"
		// will only retrieve a key ring with that exact name.
		//
		// [See the documentation about using
		// filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
		filter?: string
		id?:     string

		// A list of all the retrieved key rings
		key_rings?: [...close({
			id?:   string
			name?: string
		})]

		// The canonical id for the location. For example: "us-east1".
		location!: string

		// Project ID of the project.
		project?: string
	})
}
