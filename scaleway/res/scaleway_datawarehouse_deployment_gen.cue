package res

import "list"

#scaleway_datawarehouse_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_datawarehouse_deployment")
	close({
		// Maximum CPU count
		cpu_max!: number

		// Minimum CPU count
		cpu_min!: number

		// Date and time of deployment creation (RFC 3339 format)
		created_at?: string
		id?:         string
		private_network?: matchN(1, [#private_network, list.MaxItems(1) & [...#private_network]])

		// Name of the Datawarehouse deployment
		name!: string

		// Password for the first user of the deployment
		password?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Public endpoint configuration. A public endpoint is created by
		// default.
		public_network?: [...close({
			dns_record?: string
			id?:         string
			services?: [...close({
				port?:     number
				protocol?: string
			})]
		})]
		timeouts?: #timeouts

		// RAM per CPU (GB)
		ram_per_cpu!: number

		// The region you want to attach the resource to
		region?: string

		// Number of replicas
		replica_count!: number

		// The status of the deployment
		status?: string

		// List of tags to apply
		tags?: [...string]

		// Date and time of deployment last update (RFC 3339 format)
		updated_at?: string

		// ClickHouse version to use
		version!: string
	})

	#private_network: close({
		// DNS record for the private endpoint
		dns_record?: string

		// The endpoint ID
		id?: string

		// The private network ID
		pn_id!: string

		// List of services exposed on the private endpoint
		services?: [...close({
			port?:     number
			protocol?: string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
