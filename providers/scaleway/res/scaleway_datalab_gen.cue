package res

#scaleway_datalab: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_datalab")
	close({
		// The creation timestamp of the Datalab instance.
		created_at?: string

		// A description for the Datalab instance.
		description?: string

		// Whether a JupyterLab notebook is associated with the Datalab.
		has_notebook?: bool

		// The ID of the Datalab instance, in the `{region}/{id}` format.
		id?: string

		// The name of the Datalab instance. If not provided, a random
		// name is generated.
		name?: string

		// The URL used to reach the cluster from the notebook.
		notebook_master_url?: string

		// The URL of the JupyterLab notebook, if available.
		notebook_url?: string

		// The ID of the private network to attach the Datalab to.
		private_network_id!: string

		// The project ID the Datalab belongs to. Defaults to the
		// provider's project ID.
		project_id?: string

		// The region the Datalab is in. Only `fr-par` is currently
		// supported.
		region?: string

		// The Spark version to use for the Datalab instance. Available
		// versions can be retrieved from `ListClusterVersions`.
		spark_version!: string

		// The current status of the Datalab instance.
		status?: string

		// Tags associated with the Datalab instance.
		tags?: [...string]

		// The last update timestamp of the Datalab instance.
		updated_at?: string

		// The Spark main node configuration.
		main?: close({
			// The node type for the main node.
			node_type!: string

			// The Spark master URL within the VPC.
			spark_master_url?: string

			// The Spark UI URL.
			spark_ui_url?: string

			// Volume details for the main node.
			root_volume?: close({
				// The volume size in bytes.
				size?: number

				// The volume type.
				type?: string
			})
		})

		// Persistent volume storage configuration.
		total_storage?: close({
			// The volume size in bytes.
			size?: number

			// The volume type. Defaults to `sbs_5k`.
			type?: string
		})

		// The Spark worker nodes configuration.
		worker?: close({
			// The number of worker nodes.
			node_count!: number

			// The node type for worker nodes.
			node_type!: string

			// Volume details for worker nodes.
			root_volume?: close({
				// The volume size in bytes.
				size?: number

				// The volume type.
				type?: string
			})
		})
	})
}
