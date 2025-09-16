package res

#cloudflare_observatory_scheduled_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_observatory_scheduled_test")
	close({
		// The frequency of the test.
		// Available values: "DAILY", "WEEKLY".
		frequency?: string

		// A URL.
		id?: string

		// A test region.
		// Available values: "asia-east1", "asia-northeast1",
		// "asia-northeast2", "asia-south1", "asia-southeast1",
		// "australia-southeast1", "europe-north1", "europe-southwest1",
		// "europe-west1", "europe-west2", "europe-west3",
		// "europe-west4", "europe-west8", "europe-west9", "me-west1",
		// "southamerica-east1", "us-central1", "us-east1", "us-east4",
		// "us-south1", "us-west1".
		region?: string

		// The test schedule.
		schedule?: close({
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
			url?: string
		})
		test?: close({
			// The Lighthouse report.
			desktop_report?: close({
				// Cumulative Layout Shift.
				cls?: number

				// The type of device.
				// Available values: "DESKTOP", "MOBILE".
				device_type?: string

				// First Contentful Paint.
				fcp?: number

				// The URL to the full Lighthouse JSON report.
				json_report_url?: string

				// Largest Contentful Paint.
				lcp?: number

				// The Lighthouse performance score.
				performance_score?: number

				// Speed Index.
				si?: number

				// The state of the Lighthouse report.
				// Available values: "RUNNING", "COMPLETE", "FAILED".
				state?: string

				// Total Blocking Time.
				tbt?: number

				// Time To First Byte.
				ttfb?: number
				error?: close({
					// The error code of the Lighthouse result.
					// Available values: "NOT_REACHABLE", "DNS_FAILURE", "NOT_HTML",
					// "LIGHTHOUSE_TIMEOUT", "UNKNOWN".
					code?: string

					// Detailed error message.
					detail?: string

					// The final URL displayed to the user.
					final_displayed_url?: string
				})

				// Time To Interactive.
				tti?: number
			})
			date?: string

			// UUID.
			id?: string

			// The frequency of the test.
			// Available values: "DAILY", "WEEKLY".
			schedule_frequency?: string

			// The Lighthouse report.
			mobile_report?: close({
				// Cumulative Layout Shift.
				cls?: number

				// The type of device.
				// Available values: "DESKTOP", "MOBILE".
				device_type?: string

				// First Contentful Paint.
				fcp?: number

				// The URL to the full Lighthouse JSON report.
				json_report_url?: string

				// Largest Contentful Paint.
				lcp?: number

				// The Lighthouse performance score.
				performance_score?: number

				// Speed Index.
				si?: number

				// The state of the Lighthouse report.
				// Available values: "RUNNING", "COMPLETE", "FAILED".
				state?: string

				// Total Blocking Time.
				tbt?: number

				// Time To First Byte.
				ttfb?: number
				error?: close({
					// The error code of the Lighthouse result.
					// Available values: "NOT_REACHABLE", "DNS_FAILURE", "NOT_HTML",
					// "LIGHTHOUSE_TIMEOUT", "UNKNOWN".
					code?: string

					// Detailed error message.
					detail?: string

					// The final URL displayed to the user.
					final_displayed_url?: string
				})

				// Time To Interactive.
				tti?: number
			})

			// A test region with a label.
			region?: close({
				label?: string

				// A test region.
				// Available values: "asia-east1", "asia-northeast1",
				// "asia-northeast2", "asia-south1", "asia-southeast1",
				// "australia-southeast1", "europe-north1", "europe-southwest1",
				// "europe-west1", "europe-west2", "europe-west3",
				// "europe-west4", "europe-west8", "europe-west9", "me-west1",
				// "southamerica-east1", "us-central1", "us-east1", "us-east4",
				// "us-south1", "us-west1".
				value?: string
			})

			// A URL.
			url?: string
		})

		// A URL.
		url!: string

		// Identifier.
		zone_id!: string
	})
}
