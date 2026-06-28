package data

#scaleway_datalabs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_datalabs")
	close({
		// The list of Datalab instances.
		datalabs?: matchN(1, [close({
			// The creation timestamp of the Datalab instance.
			created_at?: string

			// The description of the Datalab instance.
			description?: string

			// Whether a JupyterLab notebook is associated with the Datalab.
			has_notebook?: bool

			// The unique identifier of the Datalab instance.
			id?: string

			// The name of the Datalab instance.
			name?: string

			// The project ID of the Datalab instance.
			project_id?: string

			// The region of the Datalab instance.
			region?: string

			// The Spark version of the Datalab instance.
			spark_version?: string

			// The current status of the Datalab instance.
			status?: string

			// Tags associated with the Datalab instance.
			tags?: [...string]

			// The last update timestamp of the Datalab instance.
			updated_at?: string
		}), [...close({
			// The creation timestamp of the Datalab instance.
			created_at?: string

			// The description of the Datalab instance.
			description?: string

			// Whether a JupyterLab notebook is associated with the Datalab.
			has_notebook?: bool

			// The unique identifier of the Datalab instance.
			id?: string

			// The name of the Datalab instance.
			name?: string

			// The project ID of the Datalab instance.
			project_id?: string

			// The region of the Datalab instance.
			region?: string

			// The Spark version of the Datalab instance.
			spark_version?: string

			// The current status of the Datalab instance.
			status?: string

			// Tags associated with the Datalab instance.
			tags?: [...string]

			// The last update timestamp of the Datalab instance.
			updated_at?: string
		})]])

		// The name to filter Datalabs by.
		name?: string

		// The organization ID to filter Datalabs by.
		organization_id?: string

		// The project ID to filter Datalabs by.
		project_id?: string

		// The region to list Datalabs from.
		region?: string

		// The tags to filter Datalabs by.
		tags?: [...string]
	})
}
