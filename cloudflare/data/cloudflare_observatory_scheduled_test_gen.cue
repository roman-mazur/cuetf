package data

#cloudflare_observatory_scheduled_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_observatory_scheduled_test")
	close({
		// The frequency of the test.
		// Available values: "DAILY", "WEEKLY".
		frequency?: string

		// A test region.
		// Available values: "asia-east1", "asia-northeast1",
		// "asia-northeast2", "asia-south1", "asia-southeast1",
		// "australia-southeast1", "europe-north1", "europe-southwest1",
		// "europe-west1", "europe-west2", "europe-west3",
		// "europe-west4", "europe-west8", "europe-west9", "me-west1",
		// "southamerica-east1", "us-central1", "us-east1", "us-east4",
		// "us-south1", "us-west1".
		region?: string

		// A URL.
		url!: string

		// Identifier.
		zone_id!: string
	})
}
