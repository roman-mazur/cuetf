package res

#scaleway_vpc_public_gateway_pat_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_public_gateway_pat_rule")
	close({
		timeouts?: #timeouts

		// The date and time of the creation of the PAT rule
		created_at?: string

		// The ID of the gateway this PAT rule is applied to
		gateway_id!: string
		id?:         string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The private IP used in the PAT rule
		private_ip!: string

		// The private port used in the PAT rule
		private_port!: number

		// The protocol used in the PAT rule
		protocol?: string

		// The public port used in the PAT rule
		public_port!: number

		// The date and time of the last update of the PAT rule
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
