package data

scaleway_datalab: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_datalab")
	close({
		// The creation timestamp of the Datalab instance.
		created_at?: string

		// The ID of the Datalab instance to look up.
		datalab_id?: string

		// A description for the Datalab instance.
		description?: string

		// Whether a JupyterLab notebook is associated with the Datalab.
		has_notebook?: bool

		// The ID of the Datalab instance, in the `{region}/{id}` format.
		id?: string

		// The Spark main node configuration.
		main?: close({
			// The node type for the main node.
			node_type?: string

			// Volume details for the main node.
			root_volume?: close({
				size?: number
				type?: string
			})

			// The Spark master URL within the VPC.
			spark_master_url?: string

			// The Spark UI URL.
			spark_ui_url?: string
		})

		// The name of the Datalab instance to look up.
		name?: string

		// The URL used to reach the cluster from the notebook.
		notebook_master_url?: string

		// The URL of the JupyterLab notebook, if available.
		notebook_url?: string

		// The ID of the private network attached to the Datalab.
		private_network_id?: string

		// The project ID the Datalab belongs to.
		project_id?: string

		// The region the Datalab is in.
		region?: string

		// The Spark version used by the Datalab instance.
		spark_version?: string

		// The current status of the Datalab instance.
		status?: string

		// Tags associated with the Datalab instance.
		tags?: [...string]

		// Persistent volume storage configuration.
		total_storage?: close({
			size?: number
			type?: string
		})

		// The last update timestamp of the Datalab instance.
		updated_at?: string

		// The Spark worker nodes configuration.
		worker?: close({
			// The number of worker nodes.
			node_count?: number

			// Volume details for worker nodes.
			root_volume?: close({
				size?: number
				type?: string
			})

			// The node type for worker nodes.
			node_type?: string
		})
	})
}
