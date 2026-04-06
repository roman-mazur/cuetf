package res

import "list"

#scaleway_opensearch_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_opensearch_deployment")
	close({
		private_network?: matchN(1, [#private_network, list.MaxItems(1) & [...#private_network]])
		timeouts?: #timeouts
		volume?: matchN(1, [#volume, list.MaxItems(1) & [...#volume]])

		// Date and time of deployment creation (RFC 3339 format)
		created_at?: string

		// List of endpoints
		endpoints?: [...close({
			id?:                 string
			private_network_id?: string
			public?:             bool
			services?: [...close({
				name?: string
				port?: number
				url?:  string
			})]
		})]
		id?: string

		// Name of the OpenSearch deployment
		name?: string

		// Number of nodes
		node_amount!: number

		// Type of node
		node_type!: string

		// Password for the deployment user
		password?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// URL of the OpenSearch Dashboards service when it is exposed on
		// a public endpoint (including when the API uses a private
		// network)
		public_dashboard_url?: string

		// The region you want to attach the resource to
		region?: string

		// The status of the deployment
		status?: string

		// List of tags to apply
		tags?: [...string]

		// Date and time of deployment last update (RFC 3339 format)
		updated_at?: string

		// Username for the deployment
		user_name?: string

		// OpenSearch version to use
		version!: string
	})

	#private_network: close({
		// UUID of the Private Network
		private_network_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#volume: close({
		// Volume size in GB
		size_in_gb!: number

		// Volume type (sbs_5k, sbs_15k)
		type!: string
	})
}
